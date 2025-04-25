import 'package:my_spending/categories/model/categories_state_model.dart';
import 'package:my_spending/categories/repository/isar_categories_repository.dart';
import 'package:my_spending/categories/state/categories_other_state.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/subcategories/repository/isar_subcategories_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subcategories_state.g.dart';

@riverpod
class SubcategoriesState extends _$SubcategoriesState {
  IsarSubcategoriesRepository isarSubcategoriesRepository =
      IsarSubcategoriesRepository();

  @override
  Future<List<SubcategoryModel>> build() async {
    return await isarSubcategoriesRepository.getAllSubcategories();
  }
}
