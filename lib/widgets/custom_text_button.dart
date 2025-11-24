import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(kPrimarColor),
        fixedSize: WidgetStateProperty.all<Size>(Size(370, 50)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
      child: const Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
