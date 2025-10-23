// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:isar_community/isar.dart';
//
// part 'account_group_model.freezed.dart';
//
// part 'account_group_model.g.dart';
//
// @freezed
// @Collection(ignore: {'copyWith'})
// class AccountGroupModel with _$AccountGroupModel {
//   const factory AccountGroupModel({
//     @Default(Isar.autoIncrement) Id id,
//     required String groupName,
//      String? groupId,
//     required DateTime dateCreated,
//     DateTime? dateModified,
//     int? sortIndex,
//   }) = _AccountGroupModel;
//
//   const AccountGroupModel._();
//
//   @override
//   Id get id => Isar.autoIncrement;
// }
import 'package:isar_community/isar.dart';

part 'account_group_model.g.dart';

@collection
class AccountGroupModel {
  Id id = Isar.autoIncrement;
  
  late String groupName;
  String? groupId;
  late DateTime dateCreated;
  DateTime? dateModified;
  int? sortIndex;
}
