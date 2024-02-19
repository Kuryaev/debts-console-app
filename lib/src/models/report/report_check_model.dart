import 'package:collection/collection.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'report_check_model.g.dart';

@CopyWith()
final class ReportCheckModel extends Equatable {
  const ReportCheckModel({
    required this.items,
  });

  final List<ReportCheckItemModel> items;

  double get totalCheck => items.map((e) => e.price).sum;

  @override
  List<Object?> get props => [
        items,
      ];
}

@CopyWith()
final class ReportCheckItemModel extends Equatable {
  const ReportCheckItemModel({
    required this.price,
    required this.name,
  });

  final double price;
  final String name;

  @override
  List<Object?> get props => [
        price,
        name,
      ];
}
