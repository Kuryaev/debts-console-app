import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts/src/models/user/user_model.dart';

part 'deal_user_model.g.dart';

@CopyWith()
final class DealUserModel extends UserModel {
  const DealUserModel({
    required super.name,
    required super.id,
    this.paid = 0,
    this.payerId,
  });

  final double paid;
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
