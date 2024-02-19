// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DealUserModelCWProxy {
  DealUserModel name(String name);

  DealUserModel id(String id);

  DealUserModel paid(double paid);

  DealUserModel payerId(String? payerId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DealUserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DealUserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  DealUserModel call({
    String? name,
    String? id,
    double? paid,
    String? payerId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDealUserModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDealUserModel.copyWith.fieldName(...)`
class _$DealUserModelCWProxyImpl implements _$DealUserModelCWProxy {
  const _$DealUserModelCWProxyImpl(this._value);

  final DealUserModel _value;

  @override
  DealUserModel name(String name) => this(name: name);

  @override
  DealUserModel id(String id) => this(id: id);

  @override
  DealUserModel paid(double paid) => this(paid: paid);

  @override
  DealUserModel payerId(String? payerId) => this(payerId: payerId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DealUserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DealUserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  DealUserModel call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? paid = const $CopyWithPlaceholder(),
    Object? payerId = const $CopyWithPlaceholder(),
  }) {
    return DealUserModel(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      paid: paid == const $CopyWithPlaceholder() || paid == null
          ? _value.paid
          // ignore: cast_nullable_to_non_nullable
          : paid as double,
      payerId: payerId == const $CopyWithPlaceholder()
          ? _value.payerId
          // ignore: cast_nullable_to_non_nullable
          : payerId as String?,
    );
  }
}

extension $DealUserModelCopyWith on DealUserModel {
  /// Returns a callable class that can be used as follows: `instanceOfDealUserModel.copyWith(...)` or like so:`instanceOfDealUserModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DealUserModelCWProxy get copyWith => _$DealUserModelCWProxyImpl(this);
}
