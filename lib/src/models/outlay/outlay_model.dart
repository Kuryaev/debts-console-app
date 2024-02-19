import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/src/models/common/id_name_model.dart';

part 'outlay_model.g.dart';

@CopyWith()
final class OutlayModel extends IdNameModel {
  const OutlayModel({
    required super.id,
    required super.name,
    required this.userIds,
    required this.sum,
    this.count = 1,
  });

  final double sum;
  final int count;
  final List<String> userIds;

  double get totalSum => sum * count;

  @override
  List<Object?> get props => [
        name,
        id,
        sum,
        userIds,
        count,
      ];
}
