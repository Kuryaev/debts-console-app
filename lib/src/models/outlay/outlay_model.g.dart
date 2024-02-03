// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlay_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OutlayModelCWProxy {
  OutlayModel id(String id);

  OutlayModel userIds(List<String> userIds);

  OutlayModel name(String name);

  OutlayModel sum(double sum);

  OutlayModel count(int count);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OutlayModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OutlayModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OutlayModel call({
    String? id,
    List<String>? userIds,
    String? name,
    double? sum,
    int? count,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOutlayModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOutlayModel.copyWith.fieldName(...)`
class _$OutlayModelCWProxyImpl implements _$OutlayModelCWProxy {
  const _$OutlayModelCWProxyImpl(this._value);

  final OutlayModel _value;

  @override
  OutlayModel id(String id) => this(id: id);

  @override
  OutlayModel userIds(List<String> userIds) => this(userIds: userIds);

  @override
  OutlayModel name(String name) => this(name: name);

  @override
  OutlayModel sum(double sum) => this(sum: sum);

  @override
  OutlayModel count(int count) => this(count: count);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OutlayModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OutlayModel(...).copyWith(id: 12, name: "My name")
  /// ````
  OutlayModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userIds = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? sum = const $CopyWithPlaceholder(),
    Object? count = const $CopyWithPlaceholder(),
  }) {
    return OutlayModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      userIds: userIds == const $CopyWithPlaceholder() || userIds == null
          ? _value.userIds
          // ignore: cast_nullable_to_non_nullable
          : userIds as List<String>,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      sum: sum == const $CopyWithPlaceholder() || sum == null
          ? _value.sum
          // ignore: cast_nullable_to_non_nullable
          : sum as double,
      count: count == const $CopyWithPlaceholder() || count == null
          ? _value.count
          // ignore: cast_nullable_to_non_nullable
          : count as int,
    );
  }
}

extension $OutlayModelCopyWith on OutlayModel {
  /// Returns a callable class that can be used as follows: `instanceOfOutlayModel.copyWith(...)` or like so:`instanceOfOutlayModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OutlayModelCWProxy get copyWith => _$OutlayModelCWProxyImpl(this);
}
