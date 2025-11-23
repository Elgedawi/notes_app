import 'package:flutter/material.dart';
import 'package:notes_app/views/home_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Color(0xff303030),
      ),
      home: const HomeView(),
    );
  }
}
