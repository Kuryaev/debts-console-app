import 'package:collection/collection.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts_domain/src/models/report/report_check_model.dart';
import 'package:debts_domain/src/models/report/report_debt_model.dart';
import 'package:debts_domain/src/models/user/user_model.dart';
import 'package:equatable/equatable.dart';

part 'report_item_model.g.dart';

@CopyWith()
final class ReportItemModel extends Equatable {
  const ReportItemModel({
    required this.user,
    required this.paid,
    required this.debts_domain,
    required this.payer,
    required this.check,
    required this.credit,
  });

  final UserModel user;
  final UserModel? payer;
  final double paid;
  final List<ReportDebtModel> debts_domain;
  final ReportCheckModel check;
  final double credit;

  bool get havedebts_domain => debts_domain.isNotEmpty;

  bool get haveSponsor => payer != null;

  double get totalDebt => debts_domain.map((d) => d.debt).sum;

  @override
  List<Object?> get props => [
        user,
        paid,
        debts_domain,
        check,
        credit,
      ];
}
