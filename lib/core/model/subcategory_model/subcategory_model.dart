import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_model.freezed.dart';

@freezed
abstract class SubcategoryModel with _$SubcategoryModel {
  const factory SubcategoryModel({
    required String subcategoryName,
    required String subcategoryId,
    required String categoryId,
    required DateTime dateCreated,
    DateTime? dateModified,
  })= _SubcategoryModel;
}
