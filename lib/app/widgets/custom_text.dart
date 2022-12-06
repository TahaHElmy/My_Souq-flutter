import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.controller, required this.hinTxt})
      : super(key: key);

  final TextEditingController controller;
  final String hinTxt;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hinTxt,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
            )
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
            )
        ),
      ),
      validator: (val) {
        if ( val == null || val.isEmpty) {
          return 'Enter your $hinTxt';
        }
        return null;
      },
    );
  }
}
