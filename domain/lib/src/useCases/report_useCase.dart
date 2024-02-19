import 'package:collection/collection.dart';
import 'package:debts_domain/src/models/deal/deal_model.dart';
import 'package:debts_domain/src/models/outlay/outlay_model.dart';
import 'package:debts_domain/src/models/report/report_check_model.dart';
import 'package:debts_domain/src/models/report/report_debt_model.dart';
import 'package:debts_domain/src/models/report/report_item_model.dart';
import 'package:debts_domain/src/models/report/report_model.dart';
import 'package:uuid/uuid.dart';

class ReportUseCase {
  ReportModel calculateReport(DealModel deal) {
    assert(
      deal.correctData,
      "Calculate Report, no CorrectData, ${deal.totalPaid - deal.totalOutlay}",
    );

    final List<ReportItemModel> items = [];

    /// Let's create a Map<UserId, UserModel> for convenience
    final userMap = Map.fromEntries(
      deal.participants.map((user) => MapEntry(user.id, user)),
    );

    final defaultOutlayMap = calculateOutlayMap(deal);
    final outlayMap = Map<String, double>.from(defaultOutlayMap);

    /// generate reportItems
    for (final user in deal.participants) {
      final currentUserId = user.id;
      final List<ReportDebtModel> debts_domain = [];

      /// calculate debts_domain for current user
      for (final userId in outlayMap.keys) {
        if (userId == user.id) continue;

        final currentUserCheck = outlayMap[currentUserId]!;
        final creditorCheck = outlayMap[userId]!;

        /// if current user not have debt -> break;
        if (currentUserCheck >= 0) break;

        /// we will leave users who overpaid
        if (creditorCheck <= 0) continue;

        final creditorId = userId;
        if (currentUserCheck.abs() > creditorCheck.abs()) {
          /// if the debt is greater than the creditor's overpayment,
          /// then we will start looking for creditors
          final debt = creditorCheck.abs();
          outlayMap[currentUserId] = currentUserCheck + debt;
          outlayMap[creditorId] = 0;
          debts_domain.add(
            ReportDebtModel(
              user: userMap[creditorId]!,
              debt: debt,
            ),
          );
          continue;
        } else {
          /// For the current user, debts_domain are scattered
          final debt = currentUserCheck.abs();
          outlayMap[creditorId] = creditorCheck.abs() - debt;
          outlayMap[currentUserId] = 0;
          debts_domain.add(
            ReportDebtModel(
              user: userMap[creditorId]!,
              debt: debt,
            ),
          );
          break;
        }
      }

      final reportItem = ReportItemModel(
        user: user,
        paid: user.paid,
        debts_domain: debts_domain,
        payer: userMap[user.payerId],
        credit: defaultOutlayMap[user.id]! > 0 ? defaultOutlayMap[user.id]! : 0,
        check: createReportCheck(user.id, deal.outlays),
      );
      items.add(reportItem);
    }
    assert(
      outlayMap.values.sum == 0,
      "Calculate Report, unallocated costs  = ${outlayMap.values.sum}",
    );

    return ReportModel(
      id: Uuid().v4(),
      name: deal.name,
      items: items,
      createdAt: DateTime.now(),
    );
  }

  Map<String, double> calculateOutlayMap(DealModel deal) {
    /// Let's create a Map<UserId, UserModel> for convenience
    final userMap = Map.fromEntries(
      deal.participants.map((user) => MapEntry(user.id, user)),
    );

    /// create a map, where the key is userId, the value is check,
    /// p.s. if the value is < 0,
    /// the user must return the debt to the user whose check > 0
    final Map<String, double> outlayMap = Map.fromEntries(
      deal.participants.map((user) => MapEntry(user.id, user.paid)),
    );

    /// Let's go through the costs and write them down in "checkMap",
    for (var outlay in deal.outlays) {
      final sumForEveryUser = outlay.totalSum / outlay.userIds.length;

      /// Let's write the amount for each user in "checkMap"
      for (var userId in outlay.userIds) {
        outlayMap[userId] = outlayMap[userId]! - sumForEveryUser;
      }
    }

    /// if the user has a sponsor, then write off his debt to the sponsor
    for (var userId in outlayMap.keys) {
      final havePayer = userMap[userId]!.havePair;
      final haveDebt = (outlayMap[userId] ?? 0) < 0;
      if (havePayer && haveDebt) {
        final payerId = userMap[userId]!.payerId!;
        outlayMap[payerId] = outlayMap[payerId]! + outlayMap[userId]!;
        outlayMap[userId] = 0;
      }
    }

    return outlayMap;
  }

  ReportCheckModel createReportCheck(String userId, List<OutlayModel> outlays) {
    final items = outlays.where((outlay) {
      return outlay.userIds.contains(userId);
    }).map(
      (outlay) {
        final count = outlay.userIds.where((id) => id == userId).length;
        final price = outlay.sum * outlay.count / outlay.userIds.length;
        return ReportCheckItemModel(
          price: outlay.userIds.isNotEmpty ? price * count : 0,
          name: outlay.name,
        );
      },
    ).toList();

    return ReportCheckModel(items: items);
  }
}
