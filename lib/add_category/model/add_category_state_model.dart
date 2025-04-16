import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_state_model.freezed.dart';

@freezed
abstract class AddCategoryStateModel with _$AddCategoryStateModel {
  const factory AddCategoryStateModel({
    required String categoryName,
    String? categoryType,
  }) = _AddCategoryStateModel;
}
