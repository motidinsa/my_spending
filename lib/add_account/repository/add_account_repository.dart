import 'package:my_spending/core/model/account_model/account_model.dart';

abstract class AddAccountRepository {
  void addAccount({required AccountModel accountModel});
}
