// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_participant_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DealParticipantModelCWProxy {
  DealParticipantModel name(String name);

  DealParticipantModel id(String id);

  DealParticipantModel paid(int paid);

  DealParticipantModel payerId(String? payerId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DealParticipantModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DealParticipantModel(...).copyWith(id: 12, name: "My name")
  /// ````
  DealParticipantModel call({
    String? name,
    String? id,
    int? paid,
    String? payerId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDealParticipantModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDealParticipantModel.copyWith.fieldName(...)`
class _$DealParticipantModelCWProxyImpl
    implements _$DealParticipantModelCWProxy {
  const _$DealParticipantModelCWProxyImpl(this._value);

  final DealParticipantModel _value;

  @override
  DealParticipantModel name(String name) => this(name: name);

  @override
  DealParticipantModel id(String id) => this(id: id);

  @override
  DealParticipantModel paid(int paid) => this(paid: paid);

  @override
  DealParticipantModel payerId(String? payerId) => this(payerId: payerId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DealParticipantModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DealParticipantModel(...).copyWith(id: 12, name: "My name")
  /// ````
  DealParticipantModel call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? paid = const $CopyWithPlaceholder(),
    Object? payerId = const $CopyWithPlaceholder(),
  }) {
    return DealParticipantModel(
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
          : paid as int,
      payerId: payerId == const $CopyWithPlaceholder()
          ? _value.payerId
          // ignore: cast_nullable_to_non_nullable
          : payerId as String?,
    );
  }
}

extension $DealParticipantModelCopyWith on DealParticipantModel {
  /// Returns a callable class that can be used as follows: `instanceOfDealParticipantModel.copyWith(...)` or like so:`instanceOfDealParticipantModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DealParticipantModelCWProxy get copyWith =>
      _$DealParticipantModelCWProxyImpl(this);
}
