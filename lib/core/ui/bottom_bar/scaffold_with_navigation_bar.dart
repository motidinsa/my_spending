import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/core/constants/color_constants.dart';
import 'package:my_spending/core/packages/salomon_bottom_bar.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,

      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey.shade700,
        onTap: onDestinationSelected,
        items: [
          SalomonBottomBarItem(
            icon: const FaIcon(FontAwesomeIcons.house, size: 22),
            title: Text(context.tr('home')),
            selectedColor: green,
          ),
          SalomonBottomBarItem(
            icon: const FaIcon(FontAwesomeIcons.chartSimple, size: 22),
            title: Text(context.tr('stat')),
            selectedColor: green,
          ),
          SalomonBottomBarItem(
            icon: const FaIcon(FontAwesomeIcons.coins, size: 22),
            title: Text(context.tr('accounts')),
            selectedColor: green,
          ),
          SalomonBottomBarItem(
            icon: const FaIcon(FontAwesomeIcons.gear, size: 22),
            title: Text(context.tr('settings')),
            selectedColor: green,
          ),
        ],
      ),
    );
  }
}
