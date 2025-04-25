import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'subcategory_model.freezed.dart';

part 'subcategory_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class SubcategoryModel with _$SubcategoryModel {
  const factory SubcategoryModel({
    @Default(Isar.autoIncrement) Id id,
    required String subcategoryName,
    required String subcategoryId,
    required String categoryId,
    required DateTime dateCreated,
    DateTime? dateModified,
  }) = _SubcategoryModel;

  const SubcategoryModel._();

  @override
  Id get id => Isar.autoIncrement;
}
