import 'package:isar_community/isar.dart';

part 'app_model.g.dart';

@collection
class AppModel {
  Id id = Isar.autoIncrement;
  
  bool? isDefaultAccountGroupInitialized;
}
