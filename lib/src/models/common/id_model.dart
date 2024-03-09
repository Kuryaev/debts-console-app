import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'id_model.g.dart';

@CopyWith()
base class IdModel extends Equatable {
  const IdModel({
    required this.id,
  });

  final String id;

  @override
  List<Object?> get props => [
        id,
      ];
}
