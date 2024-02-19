import 'package:collection/collection.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts_domain/src/models/common/id_name_model.dart';
import 'package:debts_domain/src/models/outlay/outlay_model.dart';
import 'package:debts_domain/src/models/user/deal_user_model.dart';

part 'deal_model.g.dart';

@CopyWith()
final class DealModel extends IdNameModel {
  const DealModel({
    required super.id,
    required super.name,
    required this.participants,
    required this.outlays,
  });

  final List<DealUserModel> participants;
  final List<OutlayModel> outlays;

  double get totalOutlay => outlays.map((o) => o.count * o.sum).sum;

  double get totalPaid => participants.map((o) => o.paid).sum;

  bool get correctData => totalOutlay == totalPaid;

  @override
  List<Object?> get props => [
        id,
        name,
        participants,
        outlays,
      ];
}
