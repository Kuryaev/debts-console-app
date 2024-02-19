import 'package:debts/src/models/deal/deal_model.dart';
import 'package:debts/src/models/outlay/outlay_model.dart';
import 'package:debts/src/models/user/deal_user_model.dart';
import 'package:debts/src/usecases/report_usecase.dart';
import 'package:uuid/uuid.dart';

import '../console/report_console.dart';

void main() {
  /// make users
  final user1 = DealUserModel(
    id: Uuid().v4(),
    name: "Roman",
    paid: 1400,
  );
  final user2 = DealUserModel(
    id: Uuid().v4(),
    name: "Kirill",
    paid: 3110 + 1050,
  );
  final user3 = DealUserModel(
    id: Uuid().v4(),
    name: "Artem",
  );
  final user4 = DealUserModel(
    id: Uuid().v4(),
    name: "Alina",
    payerId: user1.id,
  );

  /// make outlays
  final outlays = [
    OutlayModel(
      id: Uuid().v1(),
      name: "Кальян",
      sum: 900,
      userIds: [
        user1.id,
        user2.id,
        user3.id,
      ],
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Роллы",
      sum: 1400,
      userIds: [
        user1.id,
        user2.id,
        user3.id,
        user4.id,
      ],
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Такси",
      sum: 1050,
      userIds: [
        user1.id,
        user2.id,
        user3.id,
      ],
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Коктейль (Свиртл)",
      sum: 370,
      userIds: [
        user4.id,
      ],
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Коктейль (Синий лабоморгини)",
      sum: 370,
      userIds: [
        user2.id,
      ],
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Коктейль (Вроде что-то белого русского)",
      sum: 350,
      userIds: [
        user2.id,
      ],
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Пиво нефильтрованное",
      sum: 190,
      userIds: [
        user1.id,
        user3.id,
      ],
      count: 4,
    ),
    OutlayModel(
      id: Uuid().v1(),
      name: "Пиво жигуль",
      sum: 180,
      userIds: [
        user1.id,
        user3.id,
      ],
      count: 2,
    ),
  ];

  // make deal
  final deal = DealModel(
    id: Uuid().v4(),
    name: "Поход в кальянную <<МЯТА>>",
    participants: [
      user1,
      user2,
      user3,
      user4,
    ],
    outlays: outlays,
  );

  // display report
  ReportConsole.display(ReportUsecase().calculateReport(deal));
}
