import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddAccountGroupTextField extends StatefulWidget {
  const AddAccountGroupTextField({super.key});

  @override
  State<AddAccountGroupTextField> createState() =>
      _AddAccountGroupTextFieldState();
}

class _AddAccountGroupTextFieldState extends State<AddAccountGroupTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return TextFormField(
          controller: textEditingController,
          onChanged:
              (text) {},

          decoration: InputDecoration(
            // labelText: getLabelText(widget.title),
            contentPadding: EdgeInsets.fromLTRB(15, 20, 12, 12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: .6),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
