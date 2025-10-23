import 'package:isar_community/isar.dart';

part 'account_model.g.dart';

@collection
class AccountModel {
  Id id = Isar.autoIncrement;
  
  late String accountName;
  late String accountId;
  String? groupId;
  late DateTime dateCreated;
  late double amountAvailable;
  DateTime? dateModified;
  String? description;
}
