import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_form.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: SingleChildScrollView(
        child: CustomForm(),
      ),
    );
  }
}
