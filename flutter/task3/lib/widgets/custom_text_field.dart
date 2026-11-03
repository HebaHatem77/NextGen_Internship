import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: Color(0xff543A20)),
            decoration: InputDecoration(
              hintText: 'Enter Coupon Code here',
              hintStyle: TextStyle(
                fontFamily: 'Inter',
                color: Color(0xff543A20),
                fontSize: 10.sp,
              ),
              filled: true,
              fillColor: const Color(0xffCE9760),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        CustomButton(text: "Apply"),
      ],
    );
  }
}
