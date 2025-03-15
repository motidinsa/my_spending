import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_spending/homepage/ui/homepage.dart';
import 'package:my_spending/homepage/ui/websocket.dart';
import 'package:watcher/watcher.dart';

Future<Map<String, dynamic>> loadJsonFromAsset(String assetPath) async {
  try {
    final jsonString = await rootBundle.loadString(assetPath);
    return json.decode(jsonString);
  } catch (e) {
    print('Error loading JSON: $e');
    return {};
  }
}


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
      home: WebSocketDemo(),
    );
  }
}
