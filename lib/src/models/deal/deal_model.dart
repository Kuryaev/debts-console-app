import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/src/models/outlay/outlay_model.dart';
import 'package:debts/src/models/user/deal_participant_model.dart';
import 'package:equatable/equatable.dart';

part 'deal_model.g.dart';

@CopyWith()
final class DealModel extends Equatable {
  const DealModel({
    required this.id,
    required this.name,
    required this.participants,
    required this.outlays,
  });

  final String id;
  final String name;
  final List<DealParticipantModel> participants;
  final List<OutlayModel> outlays;

  @override
  List<Object?> get props => [
        id,
        name,
        participants,
        outlays,
      ];
}
