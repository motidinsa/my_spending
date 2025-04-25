import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';

part 'categories_state_model.freezed.dart';

@freezed
abstract class CategoriesStateModel with _$CategoriesStateModel {
  const factory CategoriesStateModel({
    @Default(LocaleKeys.expense) String selectedCategoryType,
    @Default([]) List<CategoryModel> categoryList,
    @Default(true) bool isAddCategoryVisible,
  }) = _CategoriesStateModel;
}
