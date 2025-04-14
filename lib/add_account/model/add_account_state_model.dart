import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_account_state_model.freezed.dart';

@freezed
abstract class AddAccountStateModel with _$AddAccountStateModel {
  const factory AddAccountStateModel({
    String? groupName,
     bool? hasNameFocus,
     bool? hasAmountFocus,
  }) = _AddAccountStateModel;
}
