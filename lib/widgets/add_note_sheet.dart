import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            showSnackBar(context, state);
          } else if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            BlocProvider.of<NotesCubit>(context).scrollController.jumpTo(
                BlocProvider.of<NotesCubit>(context)
                        .scrollController
                        .position
                        .minScrollExtent +
                    200);
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteILoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 25),
              child: SingleChildScrollView(child: const CustomForm()),
            ),
          );
        },
      ),
    );
  }

  void showSnackBar(BuildContext context, AddNoteFailure state) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(state.errMessage)));
  }
}
