import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_subcategory_state_model.freezed.dart';

@freezed
abstract class EditSubcategoryStateModel with _$EditSubcategoryStateModel {
  const factory EditSubcategoryStateModel({
    bool? isSaveButtonPressed,
    bool? isLoading,
    bool? hasSubcategoryNameFocus,
    String? newCategoryName,
  }) = _EditSubcategoryStateModel;
}
