import 'package:isar_community/isar.dart';

part 'subcategory_model.g.dart';

@collection
class SubcategoryModel {
  Id id = Isar.autoIncrement;
  
  late String subcategoryName;
  late String subcategoryId;
  late String categoryId;
  late DateTime dateCreated;
  DateTime? dateModified;
  int? sortIndex;
}
