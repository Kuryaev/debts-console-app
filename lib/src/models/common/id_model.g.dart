// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IdModelCWProxy {
  IdModel id(String id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IdModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IdModel(...).copyWith(id: 12, name: "My name")
  /// ````
  IdModel call({
    String? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIdModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIdModel.copyWith.fieldName(...)`
class _$IdModelCWProxyImpl implements _$IdModelCWProxy {
  const _$IdModelCWProxyImpl(this._value);

  final IdModel _value;

  @override
  IdModel id(String id) => this(id: id);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IdModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IdModel(...).copyWith(id: 12, name: "My name")
  /// ````
  IdModel call({
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return IdModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
    );
  }
}

extension $IdModelCopyWith on IdModel {
  /// Returns a callable class that can be used as follows: `instanceOfIdModel.copyWith(...)` or like so:`instanceOfIdModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IdModelCWProxy get copyWith => _$IdModelCWProxyImpl(this);
}
