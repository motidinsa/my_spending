import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/core/constants/color_constants.dart';
import 'package:my_spending/core/packages/salomon_bottom_bar.dart';
import 'package:my_spending/core/provider/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Text(context.tr('helloworld'));
  }
}
