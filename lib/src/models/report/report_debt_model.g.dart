// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_debt_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReportDebtModelCWProxy {
  ReportDebtModel user(UserModel user);

  ReportDebtModel debt(double debt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportDebtModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportDebtModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportDebtModel call({
    UserModel? user,
    double? debt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReportDebtModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReportDebtModel.copyWith.fieldName(...)`
class _$ReportDebtModelCWProxyImpl implements _$ReportDebtModelCWProxy {
  const _$ReportDebtModelCWProxyImpl(this._value);

  final ReportDebtModel _value;

  @override
  ReportDebtModel user(UserModel user) => this(user: user);

  @override
  ReportDebtModel debt(double debt) => this(debt: debt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportDebtModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportDebtModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportDebtModel call({
    Object? user = const $CopyWithPlaceholder(),
    Object? debt = const $CopyWithPlaceholder(),
  }) {
    return ReportDebtModel(
      user: user == const $CopyWithPlaceholder() || user == null
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserModel,
      debt: debt == const $CopyWithPlaceholder() || debt == null
          ? _value.debt
          // ignore: cast_nullable_to_non_nullable
          : debt as double,
    );
  }
}

extension $ReportDebtModelCopyWith on ReportDebtModel {
  /// Returns a callable class that can be used as follows: `instanceOfReportDebtModel.copyWith(...)` or like so:`instanceOfReportDebtModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReportDebtModelCWProxy get copyWith => _$ReportDebtModelCWProxyImpl(this);
}
