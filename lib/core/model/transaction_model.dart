import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String categoryName,
    String? subcategoryName,
    required String accountName,
    required double amount,
    String? description,
    required DateTime date,
    DateTime? dateModified,
  }) = _TransactionModel;
}
