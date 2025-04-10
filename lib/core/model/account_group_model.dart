import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_group_model.freezed.dart';

@freezed
abstract class AccountGroupModel with _$AccountGroupModel {
  const factory AccountGroupModel({
    required String groupName,
    required String groupId,
    required DateTime dateCreated,
    DateTime? dateModified,
  })= _AccountGroupModel;
}
