import 'package:debts/src/models/user/deal_participant_model.dart';
import 'package:uuid/uuid.dart';

class DealParticipantUsecase {
  static DealParticipantModel create(String name, [int paid = 0]) {
    return DealParticipantModel(
      id: const Uuid().v1(),
      name: name,
      paid: paid,
    );
  }

  static DealParticipantModel createWithPayer(
    String name,
    String payerId, [
    int paid = 0,
  ]) {
    return DealParticipantModel(
      id: const Uuid().v1(),
      name: name,
      paid: paid,
      payerId: payerId,
    );
  }
}
