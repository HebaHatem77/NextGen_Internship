import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 21.r,
      backgroundColor: Colors.white,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 19.sp,
          color: const Color(0xFF1A2530),
        ),
      ),
    );
  }
}
