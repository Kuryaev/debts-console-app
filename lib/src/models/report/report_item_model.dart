import 'package:collection/collection.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/src/models/report/report_check_model.dart';
import 'package:debts/src/models/report/report_debt_model.dart';
import 'package:debts/src/models/user/user_model.dart';
import 'package:equatable/equatable.dart';

part 'report_item_model.g.dart';

@CopyWith()
final class ReportItemModel extends Equatable {
  const ReportItemModel({
    required this.user,
    required this.paid,
    required this.debts,
    required this.payer,
    required this.check,
    required this.credit,
  });

  final UserModel user;
  final UserModel? payer;
  final double paid;
  final List<ReportDebtModel> debts;
  final ReportCheckModel check;
  final double credit;

  bool get haveDebts => debts.isNotEmpty;

  bool get haveSponsor => payer != null;

  double get totalDebt => debts.map((d) => d.debt).sum;

  @override
  List<Object?> get props => [
        user,
        paid,
        debts,
        check,
        credit,
      ];
}
