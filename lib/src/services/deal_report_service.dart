import 'package:collection/collection.dart';
import 'package:debts/src/models/deal/deal_model.dart';

final class DealReportService {
  // todo, THIS TEMPORARY STUB
  void displayConsoleReport(DealModel deal) {
    final totalOutlays = deal.outlays.map((e) => e.sum * e.count).sum;
    print("Сколько требовалось заплатить: $totalOutlays");
    final totalPaid = deal.participants.map((e) => e.paid).sum;
    print("Сколько заплачено: $totalPaid");

    for (var p in deal.participants) {
      print("Расходы ${p.name}");
      var sum = 0.0;
      for (var o in deal.outlays) {
        if (!o.userIds.contains(p.id)) continue;
        final outlay = (o.sum * o.count)/o.userIds.length;
        sum += outlay;
        print("${o.name} x ${o.count}: $outlay");
      }
      print("Итого: $sum");
      print("Заплатил: ${p.paid}");

      if (sum - p.paid < 0) {
        print("Ему должны: ${sum - p.paid}");
      } else if (sum - p.paid > 0) {
        print("Он должен: ${sum - p.paid}");
      } else {
        print("Никому не должен");
      }
      print("\n");
    }
  }
}
