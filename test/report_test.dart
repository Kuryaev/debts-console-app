import 'package:debts/src/models/deal/deal_model.dart';
import 'package:debts/src/models/outlay/outlay_model.dart';
import 'package:debts/src/models/user/deal_user_model.dart';
import 'package:debts/src/usecases/report_useCase.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('ReportUsecase Test', () {
    late final ReportUseCase reportUsecase;

    setUpAll(
      () {
        reportUsecase = ReportUseCase();
      },
    );

    test('calculate1', () {
      /// users
      final user1 = DealUserModel(
        id: Uuid().v1(),
        name: "USER1",
        paid: 10,
      );
      final user2 = DealUserModel(
        id: Uuid().v1(),
        name: "USER2",
        paid: 0,
      );
      final user3 = DealUserModel(
        id: Uuid().v1(),
        name: "USER3",
        paid: 3,
      );
      final user4Payer1 = DealUserModel(
        id: Uuid().v1(),
        name: "USER4(payer1)",
        paid: 2,
        payerId: user1.id,
      );

      /// outlays
      final outlay1 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY1",
        userIds: [
          user1.id,
          user2.id,
          user3.id,
        ],
        sum: 3,
      );

      final outlay2 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY2",
        userIds: [
          user4Payer1.id,
        ],
        sum: 4,
      );
      final outlay3 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY3",
        userIds: [
          user2.id,
        ],
        sum: 2,
      );
      final outlay4 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY3",
        userIds: [
          user1.id,
        ],
        sum: 6,
      );

      final DealModel deal = DealModel(
        id: "testId",
        name: "Deal1 Test",
        participants: [
          user1,
          user2,
          user3,
          user4Payer1,
        ],
        outlays: [
          outlay1,
          outlay2,
          outlay3,
          outlay4,
        ],
      );

      final report = reportUsecase.calculateReport(deal);

      final reportUser1 = report.items.firstWhere((e) => e.user == user1);
      final reportUser2 = report.items.firstWhere((e) => e.user == user2);
      final reportUser3 = report.items.firstWhere((e) => e.user == user3);
      final reportUser4 = report.items.firstWhere((e) => e.user == user4Payer1);
      expect(reportUser1.totalDebt, 0);
      expect(reportUser1.credit, 1);
      expect(reportUser2.totalDebt, 3);
      expect(reportUser2.credit, 0);
      expect(reportUser3.totalDebt, 0);
      expect(reportUser3.credit, 2);
      expect(reportUser4.totalDebt, 0);
      expect(reportUser4.credit, 0);
    });

    test('calculate2', () {
      /// users
      final user1 = DealUserModel(
        id: Uuid().v1(),
        name: "USER1",
        paid: 15,
      );
      final user2 = DealUserModel(
        id: Uuid().v1(),
        name: "USER2",
        paid: 0,
      );

      /// outlays
      final outlay1 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY1",
        userIds: [
          user1.id,
          user2.id,
        ],
        sum: 10,
      );

      final outlay2 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY2",
        userIds: [
          user1.id,
        ],
        sum: 5,
      );

      final DealModel deal = DealModel(
        id: "testId",
        name: "Deal Test",
        participants: [
          user1,
          user2,
        ],
        outlays: [
          outlay1,
          outlay2,
        ],
      );

      final report = reportUsecase.calculateReport(deal);

      final reportUser1 = report.items.firstWhere((e) => e.user == user1);
      final reportUser2 = report.items.firstWhere((e) => e.user == user2);
      expect(reportUser1.totalDebt, 0);
      expect(reportUser1.credit, 5);
      expect(reportUser2.totalDebt, 5);
      expect(reportUser2.credit, 0);
    });


    test('calculate3', () {
      /// users
      final user1 = DealUserModel(
        id: Uuid().v1(),
        name: "USER1",
        paid: 15,
      );
      final user2 = DealUserModel(
        id: Uuid().v1(),
        name: "USER2",
        paid: 2,
      );

      /// outlays
      final outlay1 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY1",
        userIds: [
          user1.id,
          user2.id,
        ],
        sum: 10,
      );

      final outlay2 = OutlayModel(
        id: Uuid().v4(),
        name: "OUTLAY2",
        userIds: [
          user1.id,
          user2.id,
        ],
        sum: 7,
      );

      final DealModel deal = DealModel(
        id: "testId",
        name: "Deal Test",
        participants: [
          user1,
          user2,
        ],
        outlays: [
          outlay1,
          outlay2,
        ],
      );

      final report = reportUsecase.calculateReport(deal);

      final reportUser1 = report.items.firstWhere((e) => e.user == user1);
      final reportUser2 = report.items.firstWhere((e) => e.user == user2);
      expect(reportUser1.totalDebt, 0);
      expect(reportUser1.credit, 6.5);
      expect(reportUser2.totalDebt, 6.5);
      expect(reportUser2.credit, 0);
    });
  });
}
