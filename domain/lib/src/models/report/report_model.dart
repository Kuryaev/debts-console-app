import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts_domain/src/models/common/id_name_model.dart';
import 'package:debts_domain/src/models/report/report_item_model.dart';

part 'report_model.g.dart';

@CopyWith()
final class ReportModel extends IdNameModel {
  const ReportModel({
    required super.id,
    required super.name,
    required this.items,
    required this.createdAt,
  });

  final List<ReportItemModel> items;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        name,
        items,
        createdAt,
      ];
}
