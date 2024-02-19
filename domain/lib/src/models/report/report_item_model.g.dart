// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_item_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReportItemModelCWProxy {
  ReportItemModel user(UserModel user);

  ReportItemModel paid(double paid);

  ReportItemModel debts_domain(List<ReportDebtModel> debts_domain);

  ReportItemModel payer(UserModel? payer);

  ReportItemModel check(ReportCheckModel check);

  ReportItemModel credit(double credit);

  ReportItemModel unallocatedCosts(double unallocatedCosts);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportItemModel call({
    UserModel? user,
    double? paid,
    List<ReportDebtModel>? debts_domain,
    UserModel? payer,
    ReportCheckModel? check,
    double? credit,
    double? unallocatedCosts,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReportItemModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReportItemModel.copyWith.fieldName(...)`
class _$ReportItemModelCWProxyImpl implements _$ReportItemModelCWProxy {
  const _$ReportItemModelCWProxyImpl(this._value);

  final ReportItemModel _value;

  @override
  ReportItemModel user(UserModel user) => this(user: user);

  @override
  ReportItemModel paid(double paid) => this(paid: paid);

  @override
  ReportItemModel debts_domain(List<ReportDebtModel> debts_domain) => this(debts_domain: debts_domain);

  @override
  ReportItemModel payer(UserModel? payer) => this(payer: payer);

  @override
  ReportItemModel check(ReportCheckModel check) => this(check: check);

  @override
  ReportItemModel credit(double credit) => this(credit: credit);

  @override
  ReportItemModel unallocatedCosts(double unallocatedCosts) =>
      this(unallocatedCosts: unallocatedCosts);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReportItemModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReportItemModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ReportItemModel call({
    Object? user = const $CopyWithPlaceholder(),
    Object? paid = const $CopyWithPlaceholder(),
    Object? debts_domain = const $CopyWithPlaceholder(),
    Object? payer = const $CopyWithPlaceholder(),
    Object? check = const $CopyWithPlaceholder(),
    Object? credit = const $CopyWithPlaceholder(),
    Object? unallocatedCosts = const $CopyWithPlaceholder(),
  }) {
    return ReportItemModel(
      user: user == const $CopyWithPlaceholder() || user == null
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserModel,
      paid: paid == const $CopyWithPlaceholder() || paid == null
          ? _value.paid
          // ignore: cast_nullable_to_non_nullable
          : paid as double,
      debts_domain: debts_domain == const $CopyWithPlaceholder() || debts_domain == null
          ? _value.debts_domain
          // ignore: cast_nullable_to_non_nullable
          : debts_domain as List<ReportDebtModel>,
      payer: payer == const $CopyWithPlaceholder()
          ? _value.payer
          // ignore: cast_nullable_to_non_nullable
          : payer as UserModel?,
      check: check == const $CopyWithPlaceholder() || check == null
          ? _value.check
          // ignore: cast_nullable_to_non_nullable
          : check as ReportCheckModel,
      credit: credit == const $CopyWithPlaceholder() || credit == null
          ? _value.credit
          // ignore: cast_nullable_to_non_nullable
          : credit as double,
    );
  }
}

extension $ReportItemModelCopyWith on ReportItemModel {
  /// Returns a callable class that can be used as follows: `instanceOfReportItemModel.copyWith(...)` or like so:`instanceOfReportItemModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReportItemModelCWProxy get copyWith => _$ReportItemModelCWProxyImpl(this);
}
