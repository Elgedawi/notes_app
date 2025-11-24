import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomTextfield(
            height: 50,
            hint: 'Title',
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 14),
          CustomTextfield(
            height: 150,
            hint: 'content',
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 150),
          CustomTextButton(),
        ],
      ),
    );
  }
}
