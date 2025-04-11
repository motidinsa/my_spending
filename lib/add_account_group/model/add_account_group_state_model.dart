import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_account_group_state_model.freezed.dart';

@freezed
abstract class AddAccountGroupStateModel with _$AddAccountGroupStateModel {
  const factory AddAccountGroupStateModel({
    required String groupName,
    bool? isSaveButtonPressed,
    bool? isLoading,

  }) = _AddAccountGroupStateModel;
}
