import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'app_model.freezed.dart';

part 'app_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class AppModel with _$AppModel {
  const factory AppModel({
    @Default(Isar.autoIncrement) Id id,
    bool? isDefaultAccountGroupInitialized,
  }) = _AppModel;

  const AppModel._();

  @override
  Id get id => Isar.autoIncrement;
}
