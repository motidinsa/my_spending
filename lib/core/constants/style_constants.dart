import 'package:flutter/material.dart';

InputDecoration getDefaultTextInputDecoration({String? type}) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(
      type == 'Category type' ? 0 : 16,
      20,
      12,
      12,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: .6),
      borderRadius: BorderRadius.circular(10),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: .6),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
  );
}
