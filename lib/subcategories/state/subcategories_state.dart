import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/subcategories/repository/isar_subcategories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subcategories_state.g.dart';

@riverpod
class SubcategoriesState extends _$SubcategoriesState {
  IsarSubcategoriesRepository isarSubcategoriesRepository =
      IsarSubcategoriesRepository();

  @override
  Stream<List<SubcategoryModel>> build(String categoryId)  {
    return  isarSubcategoriesRepository.getAllSubcategories(categoryId);
  }
}
