import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_iconbutton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 24, color: Colors.white)),
        CustomIconButton(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
