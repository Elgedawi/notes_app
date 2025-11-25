import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/custom_add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              showSnackBar(context, state);
            } else if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteILoading ? true : false,
                child: const CustomForm());
          },
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, AddNoteFailure state) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(state.errMessage)));
  }
}
