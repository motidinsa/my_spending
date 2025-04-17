validateCategoryName(String data) {
  if (data.trim().isEmpty) {
    return 'Category name can\'t be empty';
  }
  return null;
}
validateCategoryType(String? data) {
  if (data == null) {
    return 'Please select category type';
  }
  return null;
}
