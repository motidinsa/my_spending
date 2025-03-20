import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:watcher/watcher.dart';

class TranslationWatcher {
  final String translationsPath;

  TranslationWatcher(this.translationsPath);

   void startWatching(BuildContext context) {
    DirectoryWatcher(translationsPath).events.listen((event) {
      if (event.type == ChangeType.MODIFY) {
        // Reload translations
        EasyLocalization.of(context)!.setLocale(context.locale);
      }
    });
  }
}