import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    super.key,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
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
