import 'package:debts/src/services/deal_report_service.dart';
import 'package:debts/src/usecases/usecases.dart';

void main() {
  // make users
  final user1 = DealParticipantUsecase.create("Roman", 1400);
  final user2 = DealParticipantUsecase.create("Kirill", 3110 + 1050);
  final user3 = DealParticipantUsecase.create("Artem", 350);
  final user4 = DealParticipantUsecase.createWithPayer("Alina", user1.id);

  // make outlays
  final outlays = [
    OutlayUsecase.create(
      "Кальян",
      900,
      [
        user1.id,
        user2.id,
        user3.id,
      ],
    ),
    OutlayUsecase.create(
      "Роллы",
      1400,
      [
        user1.id,
        user2.id,
        user3.id,
        user4.id,
      ],
    ),
    OutlayUsecase.create(
      "Такси",
      1050,
      [
        user1.id,
        user2.id,
        user3.id,
      ],
    ),
    OutlayUsecase.create(
      "Коктейль (Свиртл)",
      370,
      [
        user4.id,
      ],
    ),
    OutlayUsecase.create(
      "Коктейль (Синий лабоморгини)",
      370,
      [
        user2.id,
      ],
    ),
    OutlayUsecase.create(
      "Коктейль (Вроде что-то белого русского)",
      350,
      [
        user2.id,
      ],
    ),
    OutlayUsecase.create(
      "Пиво нефильтрованное",
      190,
      [
        user1.id,
        user3.id,
      ],
      4,
    ),
    OutlayUsecase.create(
      "Пиво жигуль",
      180,
      [
        user1.id,
        user3.id,
      ],
      2,
    ),
  ];

  // make deal
  final deal = DealUsecase.create(
    "Поход в кальянную <<МЯТА>>",
    [
      user1,
      user2,
      user3,
      user4,
    ],
    outlays,
  );

  // display report
  DealReportService().displayConsoleReport(deal);
}
