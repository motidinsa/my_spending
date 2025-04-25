import 'package:easy_localization/easy_localization.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

validateSubcategoryName(String data) {
  if (data.trim().isEmpty) {
    return LocaleKeys.nonEmptySubcategoryName.tr();
  }
  return null;
}
