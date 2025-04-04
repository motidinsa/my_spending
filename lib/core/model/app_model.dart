import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';

@freezed
abstract class AppModel with _$AppModel {
  const factory AppModel({required int selectedIndex}) = _AppModel;
  // const factory AppModel.loaded(List<String> users) = _Loaded;
}
