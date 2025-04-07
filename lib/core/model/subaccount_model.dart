import 'package:freezed_annotation/freezed_annotation.dart';

part 'subaccount_model.freezed.dart';

@freezed
abstract class SubAccountModel with _$SubAccountModel {
  const factory SubAccountModel({
    required String subAccountName,
    required String subAccountId,
    required String accountId,
    required DateTime dateCreated,
    DateTime? dateModified,
  })= _SubAccountModel;
}
