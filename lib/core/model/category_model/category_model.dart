import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
 class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @Default(Isar.autoIncrement) Id id,
    required String categoryName,
    required String categoryId,
    required String categoryType,
    required int subcategoryCount,
    required DateTime dateCreated,
    DateTime? dateModified,
    int? expenseSortIndex,
    int? incomeSortIndex,
  })= _CategoryModel;

  const CategoryModel._();

  @override
  Id get id => Isar.autoIncrement;
}
