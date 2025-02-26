import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_spending/core/constants/color_constants.dart';

import 'package:my_spending/core/packages/salomon_bottom_bar.dart';
import 'package:my_spending/homepage/controller/homepage_controller.dart';
import 'package:my_spending/homepage/ui/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomepageController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: GetBuilder<HomepageController>(
        builder: (homepageController) {
          return Scaffold(
            body: const Homepage(),
            bottomNavigationBar: SalomonBottomBar(
              backgroundColor: Colors.white,
              currentIndex: homepageController.selectedIndex,
              onTap: (i) => homepageController.updateIndex(i),
              items: [
                SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  selectedColor: green,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.favorite_border),
                  title: Text('Likes'),
                  selectedColor: Colors.pink,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search'),
                  selectedColor: Colors.orange,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile'),
                  selectedColor: Colors.teal,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
