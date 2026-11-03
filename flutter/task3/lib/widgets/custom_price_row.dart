import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_dot_line.dart';

class CustomPriceRow extends StatelessWidget {
  final String title;
  final double price;

  const CustomPriceRow({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xff39260B),
            fontFamily: 'Inter',
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        CustomDotLine(),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: TextStyle(
            color: Color(0xff39260B),
            fontFamily: 'Inter',
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
