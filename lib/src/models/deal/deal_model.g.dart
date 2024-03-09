// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DealModelCWProxy {
  DealModel id(String id);

  DealModel name(String name);

  DealModel participants(List<DealUserModel> participants);

  DealModel outlays(List<OutlayModel> outlays);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DealModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DealModel(...).copyWith(id: 12, name: "My name")
  /// ````
  DealModel call({
    String? id,
    String? name,
    List<DealUserModel>? participants,
    List<OutlayModel>? outlays,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDealModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDealModel.copyWith.fieldName(...)`
class _$DealModelCWProxyImpl implements _$DealModelCWProxy {
  const _$DealModelCWProxyImpl(this._value);

  final DealModel _value;

  @override
  DealModel id(String id) => this(id: id);

  @override
  DealModel name(String name) => this(name: name);

  @override
  DealModel participants(List<DealUserModel> participants) =>
      this(participants: participants);

  @override
  DealModel outlays(List<OutlayModel> outlays) => this(outlays: outlays);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DealModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DealModel(...).copyWith(id: 12, name: "My name")
  /// ````
  DealModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? participants = const $CopyWithPlaceholder(),
    Object? outlays = const $CopyWithPlaceholder(),
  }) {
    return DealModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      participants:
          participants == const $CopyWithPlaceholder() || participants == null
              ? _value.participants
              // ignore: cast_nullable_to_non_nullable
              : participants as List<DealUserModel>,
      outlays: outlays == const $CopyWithPlaceholder() || outlays == null
          ? _value.outlays
          // ignore: cast_nullable_to_non_nullable
          : outlays as List<OutlayModel>,
    );
  }
}

extension $DealModelCopyWith on DealModel {
  /// Returns a callable class that can be used as follows: `instanceOfDealModel.copyWith(...)` or like so:`instanceOfDealModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DealModelCWProxy get copyWith => _$DealModelCWProxyImpl(this);
}
