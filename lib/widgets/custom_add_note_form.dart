import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomTextFormfield(
            onsaved: (value) {
              title = value;
            },
            height: 60,
            hint: 'Title',
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 14),
          CustomTextFormfield(
            onsaved: (value) {
              subtitle = value;
            },
            height: 150,
            hint: 'content',
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 120),
          CustomTextButton(
            onpressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                String formatedDate =
                    DateFormat('dd/MM/yyyy').format(DateTime.now());
                NoteModel noteModel = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: formatedDate,
                    color: Colors.orange.toARGB32());
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
