import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);
  // final List<String> bottomBarNames = [
  //   transactionsName(),
  //   statisticsName(),
  //   searchName(),
  // ];
  // final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
        selectedItemColor: primaryColor(),
        unselectedItemColor: Colors.grey.shade700,
        currentIndex: appController.currentIndex.value,
        backgroundColor: Color(0xffdaeae7),
        onTap: onBottomBarPressed,
        items:
            bottomBarNames.map((type) => bottomBarItem(type: type)).toList());
  }
}
