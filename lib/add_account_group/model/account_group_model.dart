import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'account_group_model.freezed.dart';

part 'account_group_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class AccountGroupModel with _$AccountGroupModel {
  const factory AccountGroupModel({
    @Default(Isar.autoIncrement) Id id,
    required String groupName,
     String? groupId,
    required DateTime dateCreated,
    DateTime? dateModified,
    int? sortIndex,
  }) = _AccountGroupModel;

  const AccountGroupModel._();

  @override
  Id get id => Isar.autoIncrement;
}
