validateAddAccountTextField(String data,String title) {
  if(['Name','Amount'].contains(title)){
    if (data.trim().isEmpty) {
      return '$title can\'t be empty';
    }
  }

  return null;
}
