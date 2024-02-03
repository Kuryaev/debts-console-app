import 'package:debts/src/models/outlay/outlay_model.dart';
import 'package:uuid/uuid.dart';

class OutlayUsecase {
  static OutlayModel create(
    String name,
    double sum, [
    List<String> userIds = const [],
    int count = 1,
  ]) {
    return OutlayModel(
      id: const Uuid().v1(),
      name: name,
      sum: sum,
      userIds: userIds,
      count: count,
    );
  }

  static OutlayModel addUser(OutlayModel outlay, String userId) {
    assert(
      !outlay.userIds.contains(userId),
      "OutlayUsecase: addUser, user already exist",
    );

    final newUsers = outlay.userIds..add(userId);
    return outlay.copyWith(userIds: newUsers);
  }

  static OutlayModel removeUser(OutlayModel outlay, String userId) {
    assert(
      outlay.userIds.contains(userId),
      "OutlayUsecase: removeUser, user not exist",
    );

    final newUsers = outlay.userIds..removeWhere((id) => id == userId);
    return outlay.copyWith(userIds: newUsers);
  }

  static OutlayModel setCount(OutlayModel outlay, int count) {
    return outlay.copyWith(count: count);
  }
}
