import 'package:debts/src/models/deal/deal_model.dart';
import 'package:debts/src/models/outlay/outlay_model.dart';
import 'package:debts/src/models/user/deal_participant_model.dart';
import 'package:uuid/uuid.dart';

class DealUsecase {
  static DealModel create(
    String name, [
    List<DealParticipantModel> participant = const [],
    List<OutlayModel> outlays = const [],
  ]) {
    return DealModel(
      id: const Uuid().v1(),
      name: name,
      participants: participant,
      outlays: outlays,
    );
  }

  static DealModel addParticipant(
    DealModel deal,
    DealParticipantModel participant,
  ) {
    assert(
      !deal.participants.contains(participant),
      "DealUsecase: addParticipant, user already exist",
    );

    final newParticipants = deal.participants..add(participant);
    return deal.copyWith(participants: newParticipants);
  }

  static DealModel removeParticipantById(
    DealModel deal,
    DealParticipantModel participant,
  ) {
    assert(
      !deal.participants.contains(participant),
      "DealUsecase: removeParticipant, user not exist",
    );

    final participants = deal.participants
      ..removeWhere(
        (p) => p.id == participant.id,
      );
    return deal.copyWith(participants: participants);
  }

  static DealModel addOutlay(
    DealModel deal,
    OutlayModel outlay,
  ) {
    assert(
      !deal.participants.contains(outlay),
      "DealUsecase: addOutlay, outlay already exist",
    );

    assert(
      deal.participants.where((p) => !outlay.userIds.contains(p.id)).isEmpty,
      "DealUsecase: addOutlay, outlay contain participants, which not contains in deal",
    );

    final outlays = deal.outlays..add(outlay);
    return deal.copyWith(outlays: outlays);
  }

  static DealModel removeOutlayId(
    DealModel deal,
    OutlayModel outlay,
  ) {
    assert(
      !deal.participants.contains(outlay),
      "DealUsecase: addOutlay, outlay already exist",
    );

    assert(
      deal.participants.where((p) => !outlay.userIds.contains(p.id)).isEmpty,
      "DealUsecase: addOutlay, outlay contain participants, which not contains in deal",
    );

    final outlays = deal.outlays..add(outlay);
    return deal.copyWith(outlays: outlays);
  }
}
