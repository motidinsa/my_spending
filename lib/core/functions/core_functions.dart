import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void unFocus() => FocusManager.instance.primaryFocus?.unfocus();

String generateDatabaseId( DateTime time) {
  final DateFormat dateFormatter = DateFormat('yyyyMMdd_HmsS');
  String key = dateFormatter.format(time);
  return key;
}
