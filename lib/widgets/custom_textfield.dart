import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormfield extends StatelessWidget {
  const CustomTextFormfield({
    super.key,
    required this.height,
    required this.hint,
    required this.alignment,
    this.onsaved,
  });
  final double height;
  final String hint;
  final Alignment alignment;
  final Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      maxLines: 10000,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8),
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
