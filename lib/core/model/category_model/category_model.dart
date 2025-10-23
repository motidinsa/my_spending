import 'package:isar_community/isar.dart';

part 'category_model.g.dart';

@collection
class CategoryModel {
  Id id = Isar.autoIncrement;
  
  late String categoryName;
  late String categoryId;
  late String categoryType;
  late int subcategoryCount;
  late DateTime dateCreated;
  DateTime? dateModified;
  int? expenseSortIndex;
  int? incomeSortIndex;
}
