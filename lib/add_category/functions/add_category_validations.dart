import 'package:easy_localization/easy_localization.dart';
import 'package:my_spending/core/constants/language_constants.dart';

validateCategoryName(String data) {
  if (data.trim().isEmpty) {
    return nonEmptyCategoryName.tr();
  }
  return null;
}

validateCategoryType(String? data) {
  if (data == null) {
    return nonEmptyCategoryType.tr();
  }
  return null;
}
