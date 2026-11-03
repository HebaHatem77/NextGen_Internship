import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_gradient_container.dart';

class CustomCounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const CustomCounterButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomGradientContainer(
        width: 20.w,
        height: 20.h,
        borderRadius: BorderRadius.circular(2.r),
        child: Icon(
          icon,
          color: Colors.white,
          size: 18.h,
        ),
      ),
    );
  }
}