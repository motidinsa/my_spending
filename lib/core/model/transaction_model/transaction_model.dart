import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String accountName,
    required String accountId,
    String? subAccountName,
     String? subAccountId,
    required String categoryName,
    required String categoryId,
    String? subcategoryName,
    String? subcategoryId,
    required double amount,
    String? description,
    required DateTime date,
    required DateTime dateCreated,
    DateTime? dateModified,
  }) = _TransactionModel;
}
