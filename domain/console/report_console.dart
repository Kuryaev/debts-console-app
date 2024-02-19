import 'package:debts_domain/src/models/report/report_check_model.dart';
import 'package:debts_domain/src/models/report/report_item_model.dart';
import 'package:debts_domain/src/models/report/report_model.dart';
import 'package:chalkdart/chalk.dart';

class ReportConsole {
  static void display(ReportModel report) {
    print("Событие: ${chalk.blue(report.name)}");
    print("Отчет сформирован в: ${chalk.white(report.createdAt)}\n");
    for (var item in report.items) {
      displayReportItem(item);
      print("____________________________");
    }
  }

  static void displayReportItem(ReportItemModel reportItem) {
    print(chalk.blue.bold(reportItem.user.name));
    if (reportItem.haveSponsor) {
      print(chalk.italic.font7.blue("Cпонсор: ${reportItem.payer!.name}"));
    }
    displayCheck(reportItem.check);
    print(chalk.green("Оплачено: ${reportItem.paid}"));
    print(chalk.green("Должны: ${reportItem.credit}"));
    if (reportItem.havedebts_domain) {
      for (var debt in reportItem.debts_domain) {
        print(
          chalk.red(
            "Долг пользователю: @${debt.user.name}, "
            "в размере: ${debt.debt} шекелей",
          ),
        );
      }
    }
  }

  static void displayCheck(ReportCheckModel check) {
    print(chalk.italic.grey("Чек:"));
    for (var item in check.items) {
      print(
        chalk.italic.grey("${item.name} -> ${item.price} шекелей"),
      );
    }
    print(chalk.italic.grey("Итого: ${check.totalCheck}"));
  }
}
