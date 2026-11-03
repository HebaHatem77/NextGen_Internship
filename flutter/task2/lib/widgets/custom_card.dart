import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  final FaIconData icon;
  final String text;
  const CustomCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(icon, color: Colors.white, size: 28,),
          SizedBox(height: 12),
          Text(text,textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,)),
        ],
      ),
    );
  }
}
