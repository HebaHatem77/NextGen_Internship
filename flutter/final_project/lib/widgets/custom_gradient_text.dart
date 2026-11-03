import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final String? fontFamily;

  const CustomGradientText({
    super.key,
    required this.text,
    this.fontSize = 31,
    this.fontWeight = FontWeight.w600,
    this.fontFamily = 'Inter',
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment(-0.788, -0.616),
          end: Alignment(0.788, 0.616),
          colors: [
            Color(0xFFF68989),
            Color(0xFFFE5150),
          ],
          stops: [0.1284, 0.8625],
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: Colors.white,
        ),
      ),
    );
  }
}