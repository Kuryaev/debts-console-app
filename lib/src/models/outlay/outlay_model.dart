import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'outlay_model.g.dart';

@CopyWith()
final class OutlayModel extends Equatable {
  const OutlayModel({
    required this.id,
    required this.userIds,
    required this.name,
    required this.sum,
    this.count = 1,
  });

  final String id;
  final String name;
  final double sum;
  final int count;
  final List<String> userIds;

  @override
  List<Object?> get props => [
        name,
        id,
        sum,
        userIds,
        count,
      ];
}
