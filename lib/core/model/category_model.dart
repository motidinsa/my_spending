import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String categoryName,
    required String categoryId,
    bool? hasSubcategory,
    required DateTime dateCreated,
    DateTime? dateModified,
  })= _CategoryModel;
}
