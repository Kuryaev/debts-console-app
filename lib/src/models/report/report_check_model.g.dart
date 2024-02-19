// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_check_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReportCheckModelCWProxy {
  ReportCheckModel items(List<ReportCheckItemModel> items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportCheckModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportCheckModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportCheckModel call({
    List<ReportCheckItemModel>? items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReportCheckModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReportCheckModel.copyWith.fieldName(...)`
class _$ReportCheckModelCWProxyImpl implements _$ReportCheckModelCWProxy {
  const _$ReportCheckModelCWProxyImpl(this._value);

  final ReportCheckModel _value;

  @override
  ReportCheckModel items(List<ReportCheckItemModel> items) =>
      this(items: items);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportCheckModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportCheckModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportCheckModel call({
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return ReportCheckModel(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ReportCheckItemModel>,
    );
  }
}

extension $ReportCheckModelCopyWith on ReportCheckModel {
  /// Returns a callable class that can be used as follows: `instanceOfReportCheckModel.copyWith(...)` or like so:`instanceOfReportCheckModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReportCheckModelCWProxy get copyWith => _$ReportCheckModelCWProxyImpl(this);
}

abstract class _$ReportCheckItemModelCWProxy {
  ReportCheckItemModel price(double price);

  ReportCheckItemModel name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportCheckItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportCheckItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportCheckItemModel call({
    double? price,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReportCheckItemModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReportCheckItemModel.copyWith.fieldName(...)`
class _$ReportCheckItemModelCWProxyImpl
    implements _$ReportCheckItemModelCWProxy {
  const _$ReportCheckItemModelCWProxyImpl(this._value);

  final ReportCheckItemModel _value;

  @override
  ReportCheckItemModel price(double price) => this(price: price);

  @override
  ReportCheckItemModel name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportCheckItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportCheckItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportCheckItemModel call({
    Object? price = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ReportCheckItemModel(
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $ReportCheckItemModelCopyWith on ReportCheckItemModel {
  /// Returns a callable class that can be used as follows: `instanceOfReportCheckItemModel.copyWith(...)` or like so:`instanceOfReportCheckItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReportCheckItemModelCWProxy get copyWith =>
      _$ReportCheckItemModelCWProxyImpl(this);
}
