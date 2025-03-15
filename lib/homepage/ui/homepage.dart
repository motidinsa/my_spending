import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/core/language/color_constants.dart';
import 'package:my_spending/core/packages/salomon_bottom_bar.dart';
import 'package:my_spending/core/provider/app_state.dart';
import 'package:my_spending/homepage/provider/homepage_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(appStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('helloworld'.tr()),
      ),
      body: Text(context.tr('helloworld')),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex.selectedIndex,
        onTap: (i) => ref.read(appStateProvider.notifier).updateIndex(i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: Text("Home".tr()),
            selectedColor: green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: Text('Likes'.tr()), // Now it's correct
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: Text('Search'.tr()), // Now it's correct
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: Text('Profile'.tr()), // Now it's correct
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
