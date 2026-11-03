import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final int number;
  final String text;
  const CustomText({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "$number",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
        ),
        SizedBox(width: 4,),
        Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 4,)
          ],
        ),
      ],
    );
  }
}
