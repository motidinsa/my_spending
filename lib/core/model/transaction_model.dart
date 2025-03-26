class TransactionModel{
  final String categoryName;
  final String? subcategoryName;
  final String accountName;
  final double amount;
  final String? description;
  final DateTime date;
  final DateTime? dateModified;

  TransactionModel({
    required this.categoryName,
     this.subcategoryName,
    required this.accountName,
    required this.amount,
     this.description,
    required this.date,
     this.dateModified,
  });

}