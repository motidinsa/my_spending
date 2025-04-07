import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';

@freezed
abstract class AccountModel with _$AccountModel {
  const factory AccountModel({
    required String accountName,
    required String accountId,
    bool? hasSubAccount,
    required DateTime dateCreated,
    DateTime? dateModified,
  })= _AccountModel;
}
