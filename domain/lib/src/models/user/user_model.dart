import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:debts_domain/src/models/common/id_name_model.dart';

part 'user_model.g.dart';

@CopyWith()
base class UserModel extends IdNameModel {
  const UserModel({
    required super.name,
    required super.id,
  });

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
