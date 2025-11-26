import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;

  const NoteItem({super.key, required this.note});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, EditNoteView.id),
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.only(top: 20, left: 10, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20, right: 10.0),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.black.withAlpha(135),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 15),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withAlpha(135),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
