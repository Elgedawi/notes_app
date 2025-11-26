import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    final NoteModel note =
        ModalRoute.of(context)!.settings.arguments as NoteModel;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Edit Note',
                icon: Icons.check,
                onPressed: () {
                  note.title = title ?? note.title;
                  note.subtitle = subtitle ?? note.subtitle;
                  note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 50),
              CustomTextFormfield(
                onchanged: (value) {
                  title = value;
                },
                height: 60,
                hint: 'Title',
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(height: 20),
              CustomTextFormfield(
                onchanged: (value) {
                  subtitle = value;
                },
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
