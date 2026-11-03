import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/cart_data.dart';

class CustomListTile extends StatelessWidget {
  final CartItem item;

  const CustomListTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final product = item.product;

    return Card(
      color: const Color(0xff543A20),
      elevation: 0,
      margin: EdgeInsets.only(
        bottom: 12.h,
        top: 12.h
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Container(
                width: 104.w,
                height: 103.h,
                color: const Color(0xffCE9760),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                  width: 55.w,
                  height: 55.h,
                ),
              ),
            ),

            SizedBox(width: 26.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 8.w),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: const Color(0xffCE9760),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                'x${item.quantity}',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff543A20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
