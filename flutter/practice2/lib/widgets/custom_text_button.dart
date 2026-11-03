import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Widget screen;
  const CustomTextButton({super.key, required this.text, required this.screen});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(
        text,
        style: TextStyle(color: Color(0xff38B6FF), fontSize: 12),
      ),
    );
  }
}
