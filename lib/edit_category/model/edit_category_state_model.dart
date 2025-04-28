import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_category_state_model.freezed.dart';

@freezed
abstract class EditCategoryStateModel with _$EditCategoryStateModel {
  const factory EditCategoryStateModel({
    bool? isSaveButtonPressed,
    bool? isLoading,
    bool? hasCategoryNameFocus
  }) = _EditCategoryStateModel;
}
