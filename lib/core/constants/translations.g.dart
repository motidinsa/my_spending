// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "appTitle": "My Spending",
  "home": "Home",
  "stat": "Status",
  "accounts": "Accounts",
  "settings": "Setting",
  "addTransaction": "Add transaction",
  "date": "Date",
  "amount": "Amount",
  "account": "Account",
  "category": "Category",
  "description": "Description",
  "save": "Save",
  "more": "More",
  "tip": "Tip",
  "fee": "Fee",
  "expense": "Expense",
  "income": "Income",
  "transfer": "Transfer",
  "optional": "Optional",
  "addCategory": "Add Category",
  "addSubcategory": "Add Subcategory",
  "name": "Name",
  "selectType": "Select type",
  "categoryType": "Category type",
  "both": "Both",
  "nonEmptyCategoryName": "Category name can't be empty",
  "nonEmptyCategoryType": "Please select category type",
  "categories": "Categories",
  "subcategory": {
    "one": "Subcategory",
    "other": "Subcategories"
  },
  "subcategoryCount": {
    "zero": "No subcategory",
    "one": "{} subcategory",
    "other": "{} subcategories"
  },
  "msg_named": "Easy localization is written in the {lang} language",
  "msg_mixed": "{} are written in the {lang} language",
  "gender": {
    "male": "Hi man ;) {}",
    "female": "Hello girl :) {}",
    "other": "Hello {}"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en};
}
