import 'package:flutter/material.dart';

void showSnackbar(
    {required BuildContext context, required String message, Color? bgColor}) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
        content: Text(message),
        backgroundColor: bgColor ?? Colors.blue,
        duration: const Duration(seconds: 3)),
  );
}
