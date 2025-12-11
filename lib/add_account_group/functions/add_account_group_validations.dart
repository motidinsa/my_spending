String? validateAddAccountGroupTextField(String data) {
  if (data.trim().isEmpty) {
    return 'Group name can\'t be empty';
  }
  return null;
}
