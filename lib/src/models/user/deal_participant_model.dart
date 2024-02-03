import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'deal_participant_model.g.dart';

@CopyWith()
final class DealParticipantModel extends Equatable {
  const DealParticipantModel({
    required this.name,
    required this.id,
    this.paid = 0,
    this.payerId,
  });

  final String id;
  final String name;
  final int paid;
  final String? payerId;

  bool get havePair => payerId != null;

  @override
  List<Object?> get props => [
        id,
        name,
        paid,
        payerId,
      ];
}
