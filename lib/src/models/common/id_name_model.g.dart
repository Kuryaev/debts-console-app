// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_name_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IdNameModelCWProxy {
  IdNameModel id(String id);

  IdNameModel name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IdNameModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IdNameModel(...).copyWith(id: 12, name: "My name")
  /// ````
  IdNameModel call({
    String? id,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIdNameModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIdNameModel.copyWith.fieldName(...)`
class _$IdNameModelCWProxyImpl implements _$IdNameModelCWProxy {
  const _$IdNameModelCWProxyImpl(this._value);

  final IdNameModel _value;

  @override
  IdNameModel id(String id) => this(id: id);

  @override
  IdNameModel name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IdNameModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IdNameModel(...).copyWith(id: 12, name: "My name")
  /// ````
  IdNameModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return IdNameModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $IdNameModelCopyWith on IdNameModel {
  /// Returns a callable class that can be used as follows: `instanceOfIdNameModel.copyWith(...)` or like so:`instanceOfIdNameModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IdNameModelCWProxy get copyWith => _$IdNameModelCWProxyImpl(this);
}
