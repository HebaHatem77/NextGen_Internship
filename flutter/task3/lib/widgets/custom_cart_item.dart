import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/cart_data.dart';
import 'counter_button.dart';

class CustomCartItem extends StatelessWidget {
  final CartItem item;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CustomCartItem({
    super.key,
    required this.item,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    final product = item.product;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 22.w),
      height: 92.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xffCE9760),
      ),
      child: Row(
        children: [
          Image.asset(product.image, width: 75.w, height: 80.h, fit: BoxFit.cover),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\$${item.totalPrice}',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff39260B),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CounterButton(icon: Icons.remove_sharp, onPressed: onDecrease),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              '${item.quantity}',
              style: TextStyle(
                fontFamily: 'Inter',
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CounterButton(icon: Icons.add, onPressed: onIncrease),
        ],
      ),
    );
  }
}
