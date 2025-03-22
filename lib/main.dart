import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_spending/core/constants/color_constants.dart';
import 'package:my_spending/core/functions/core_functions.dart';
import 'package:my_spending/core/packages/salomon_bottom_bar.dart';
import 'package:my_spending/core/provider/app_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('de')],
        path: 'assets',
        fallbackLocale: Locale('en'),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(appStateProvider);
    return Scaffold(
      body: SafeArea(child: getSelectedPage(selectedIndex.selectedIndex)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: green,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex.selectedIndex,
        unselectedItemColor: Colors.grey.shade700,
        onTap: (i) => ref.read(appStateProvider.notifier).updateIndex(i),
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
