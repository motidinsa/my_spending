import 'package:flutter/material.dart';
import 'package:my_spending/accounts/ui/accounts.dart';
import 'package:my_spending/homepage/settings/ui/settings.dart';
import 'package:my_spending/homepage/ui/homepage.dart';
import 'package:my_spending/status/ui/status.dart';

Widget getSelectedPage(int index) {
  switch (index) {
    case 1:
      return Status();
    case 2:
      return Accounts();
    case 3:
      return Settings();
  }
  return  HomePage();
}
