import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_gradient_text.dart';

class CustomText extends StatelessWidget {
  final String normalText;
  final String colorfulText;
  const CustomText({super.key, required this.normalText, required this.colorfulText});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: normalText,
            style: TextStyle(
              color: Color(0xff4F4F4F),
              fontSize: 31.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
              height: 0.8.h,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: CustomGradientText(text: colorfulText),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
