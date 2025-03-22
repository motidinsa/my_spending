double getCardPadding({String? description, String? subcategory}) {
  if (description == null && subcategory == null) {
    return 15;
  } else if ((description == null && subcategory != null)
     ) {
    return 8;
  }else if (description != null && subcategory == null){
    return 10;
  }
  return 5;
}
