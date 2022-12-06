import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String Txt) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(Txt)),
  );
}
