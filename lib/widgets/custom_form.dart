import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomTextFormfield(
            height: 60,
            hint: 'Title',
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 14),
          CustomTextFormfield(
            height: 150,
            hint: 'content',
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 120),
          CustomTextButton(),
        ],
      ),
    );
  }
}
