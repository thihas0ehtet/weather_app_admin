import 'package:flutter/material.dart';

showSnackBar(BuildContext context, String text, {Color color = Colors.green}) {
  SnackBar snackBar = SnackBar(
    backgroundColor: color,
    duration: const Duration(seconds: 2),
    content: Text(text),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
