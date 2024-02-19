import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts_domain/src/models/user/user_model.dart';
import 'package:equatable/equatable.dart';

part 'report_debt_model.g.dart';

@CopyWith()
final class ReportDebtModel extends Equatable {
  const ReportDebtModel({
    required this.user,
    required this.debt,
  });

  final double debt;
  final UserModel user;

  @override
  List<Object?> get props => [
        debt,
        user,
      ];
}
