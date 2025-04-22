import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:my_spending/core/constants/language_constants.dart';
import 'package:my_spending/core/dependency_injection/dependency_injections.dart';
import 'package:my_spending/core/route/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupDependencyInjection();

  runApp(
    GlobalLoaderOverlay(
      overlayWidgetBuilder: (_) {
        return Center(
          child: CircularProgressIndicator(
            color: Colors.green.shade700,
            strokeWidth: 2,
          ),
        );
      },
      child: ProviderScope(
        child: EasyLocalization(
          supportedLocales: [Locale('en'), Locale('de')],
          path: 'assets',
          fallbackLocale: Locale('en'),
          child: const MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      // title: context.tr(appTitle),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
