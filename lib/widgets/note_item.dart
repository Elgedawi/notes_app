import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCE7F),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.only(top: 20, left: 10, bottom: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20, right: 10.0),
              child: Text(
                'Build your career with Ahmed Mostafa',
                style: TextStyle(
                  color: Colors.black.withAlpha(135),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 15),
            child: Text(
              'May 21.2022',
              style: TextStyle(
                color: Colors.black.withAlpha(135),
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
