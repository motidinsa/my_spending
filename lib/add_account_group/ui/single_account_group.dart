import 'package:flutter/material.dart';

class SingleAccountGroup extends StatelessWidget {
  final String name;

  const SingleAccountGroup({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name, textAlign: TextAlign.center),
      onTap: () {},
    );
  }
}
