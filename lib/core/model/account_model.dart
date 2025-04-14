import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'account_model.freezed.dart';

part 'account_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class AccountModel with _$AccountModel {
  const factory AccountModel({
    required String accountName,
    required String accountId,
    String? accountGroupId,
    required DateTime dateCreated,
    required double amountAvailable,
    DateTime? dateModified,
    String? description,
  }) = _AccountModel;

  const AccountModel._();

  Id get id => Isar.autoIncrement;
}
