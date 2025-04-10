import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';

@freezed
abstract class AccountModel with _$AccountModel {
  const factory AccountModel({
    required String accountName,
    required String accountId,
     String? accountGroupId,
    required DateTime dateCreated,
    required double amountAvailable,
    DateTime? dateModified,
  })= _AccountModel;
}
