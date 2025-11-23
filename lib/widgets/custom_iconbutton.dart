import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withAlpha(20),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, size: 28, color: Colors.white),
      ),
    );
  }
}
