import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/product.dart';
import 'counter_button.dart';

class CustomGridItem extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const CustomGridItem({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.w,
      height: 179.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.r),
        color: const Color(0xffCE9760),
      ),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          Center(
            child: Image.asset(
              product.image,
              width: 100.w,
              height: 81.h,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 101.w,
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      product.desc,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff39260B),
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                spacing: 8,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff39260B),
                    ),
                  ),

                  CounterButton(icon: Icons.add, onPressed: onAddToCart)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
