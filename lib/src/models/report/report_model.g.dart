// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReportModelCWProxy {
  ReportModel id(String id);

  ReportModel name(String name);

  ReportModel items(List<ReportItemModel> items);

  ReportModel createdAt(DateTime createdAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportModel call({
    String? id,
    String? name,
    List<ReportItemModel>? items,
    DateTime? createdAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReportModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReportModel.copyWith.fieldName(...)`
class _$ReportModelCWProxyImpl implements _$ReportModelCWProxy {
  const _$ReportModelCWProxyImpl(this._value);

  final ReportModel _value;

  @override
  ReportModel id(String id) => this(id: id);

  @override
  ReportModel name(String name) => this(name: name);

  @override
  ReportModel items(List<ReportItemModel> items) => this(items: items);

  @override
  ReportModel createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return ReportModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ReportItemModel>,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
    );
  }
}

extension $ReportModelCopyWith on ReportModel {
  /// Returns a callable class that can be used as follows: `instanceOfReportModel.copyWith(...)` or like so:`instanceOfReportModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReportModelCWProxy get copyWith => _$ReportModelCWProxyImpl(this);
}
