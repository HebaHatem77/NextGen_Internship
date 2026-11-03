import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  const CustomGradientContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w,
      height: height?.h,
      padding: padding,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-0.788, -0.616),
          end: Alignment(0.788, 0.616),
          colors: [
            Color(0xFFF68989),
            Color(0xFFFE5150),
          ],
          stops: [0.1284, 0.8625],
        ),
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}