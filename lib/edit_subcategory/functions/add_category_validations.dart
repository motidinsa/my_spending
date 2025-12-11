import 'package:easy_localization/easy_localization.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

String? validateCategoryName(String data) {
  if (data.trim().isEmpty) {
    return LocaleKeys.nonEmptyCategoryName.tr();
  }
  return null;
}

String? validateCategoryType(String? data) {
  if (data == null) {
    return LocaleKeys. nonEmptyCategoryType.tr();
  }
  return null;
}
