import 'package:debts/src/models/common/id_model.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'id_name_model.g.dart';

@CopyWith()
base class IdNameModel extends IdModel {
  const IdNameModel({
    required super.id,
    required this.name,
  });

  final String name;

  @override
  List<Object?> get props => [
    id,
    name,
  ];
}
