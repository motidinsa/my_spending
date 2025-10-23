import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/add_subcategory/model/add_subcategory_state_model.dart';
import 'package:my_spending/add_subcategory/repository/isar_add_subcategory_repository.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/model/subcategory_model/subcategory_model.dart';
import 'package:my_spending/core/route/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_subcategory_state.g.dart';

@riverpod
class AddSubcategoryState extends _$AddSubcategoryState {
  String subcategoryName = '';
  final formKey = GlobalKey<FormState>();

  @override
  AddSubcategoryStateModel build() {
    return AddSubcategoryStateModel(hasSubcategoryNameFocus: true);
  }

  void updateSubcategoryName(String name) {
    subcategoryName = name;
  }

  void updateSaveButtonPressedStatus() {
    state = state.copyWith(isSaveButtonPressed: true);
  }

  Future<void> addSubcategory(String categoryId) async {
    try {
      state = state.copyWith(isLoading: true);
      IsarAddSubcategoryRepository isarAddSubcategoryRepository =
          IsarAddSubcategoryRepository();
      DateTime now = DateTime.now();
      final subcategoryModel = SubcategoryModel()
        ..subcategoryName = subcategoryName
        ..subcategoryId = generateDatabaseId(now)
        ..dateCreated = now
        ..categoryId = categoryId;
      
      await isarAddSubcategoryRepository.addSubcategory(
        subcategoryModel: subcategoryModel,
      );
      navigatorKey.currentContext?.pop();
      // ref.read(categoriesStateProvider.notifier).updateCategories();
    } on Exception catch (e) {
      print(e);
    } finally {
      state = state.copyWith(isLoading: null);
    }
  }

  void addSubcategoryNameFocus() {
    state = state.copyWith(hasSubcategoryNameFocus: subcategoryName.isEmpty);
  }
}
