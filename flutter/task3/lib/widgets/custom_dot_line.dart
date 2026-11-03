import 'package:flutter/material.dart';

class CustomDotLine extends StatelessWidget {
  const CustomDotLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '.' * 100,
        maxLines: 1,
        overflow: TextOverflow.clip,
        style: TextStyle(
          color: Color(0xff39260B),
        ),
      ),
    );
  }
}
