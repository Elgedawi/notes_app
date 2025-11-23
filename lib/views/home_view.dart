import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_listView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          children: [
            SizedBox(height: 30),
            CustomAppBar(),
            SizedBox(height: 10),
            Expanded(child: NotesListview()),
          ],
        ),
      ),
    );
  }
}
