import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormfield extends StatelessWidget {
  const CustomTextFormfield({
    super.key,
    required this.height,
    required this.hint,
    required this.alignment,
  });
  final double height;
  final String hint;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 10000,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hint: Align(
          alignment: alignment,
          child: Text(hint, style: TextStyle(color: kPrimarColor)),
        ),
        constraints: BoxConstraints(maxHeight: height),
        enabledBorder: boderDecoration(),
        border: boderDecoration(),
        focusedBorder: boderDecoration(),
      ),
    );
  }

  OutlineInputBorder boderDecoration() =>
      OutlineInputBorder(borderSide: BorderSide(color: kPrimarColor));
}
