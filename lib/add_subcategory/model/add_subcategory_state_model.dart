import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_subcategory_state_model.freezed.dart';

@freezed
abstract class AddSubcategoryStateModel with _$AddSubcategoryStateModel {
  const factory AddSubcategoryStateModel({
    bool? isSaveButtonPressed,
    bool? isLoading,
    bool? hasSubcategoryNameFocus
  }) = _AddSubcategoryStateModel;
}
