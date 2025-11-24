import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              CustomAppBar(title: 'Edit Note', icon: Icons.check),
              SizedBox(height: 50),
              CustomTextfield(
                height: 60,
                hint: 'Title',
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 20),
              CustomTextfield(
                height: 150,
                hint: 'content',
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
