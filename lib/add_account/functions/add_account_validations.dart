validateAddAccountTextField(String data,String title) {
  if(['Name','Amount'].contains(title)){
    if (data.trim().isEmpty) {
      return '$title can\'t be empty';
    }else if(title == 'Amount'){
      final numberRegex = RegExp(r'^\d+(\.\d+)?$');
      if (!numberRegex.hasMatch(data)) {
        return 'Please enter a valid amount';
      }
    }
  }

  return null;
}
