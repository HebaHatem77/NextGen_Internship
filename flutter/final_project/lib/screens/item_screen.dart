import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_counter_button.dart';
import '../widgets/custom_gradient_container.dart';

class ItemScreen extends StatefulWidget {
  final String title;
  final String calories;
  final String imagePath;
  final String price;

  const ItemScreen({
    super.key,
    required this.title,
    required this.calories,
    required this.imagePath,
    required this.price,
  });

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int quantity = 2;

  @override
  Widget build(BuildContext context) {
    final double unitPrice = double.tryParse(widget.price) ?? 0.0;

    final double totalPrice = unitPrice * quantity;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        toolbarHeight: 30.h,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: const Color(0xff2c2c2c),
              size: 22.h,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),
              Text(
                widget.title,
                style: TextStyle(
                  color: const Color(0xff4F4F4F),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 4.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                      color: const Color(0xffEB5757),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Text(
                    unitPrice.toStringAsFixed(2),
                    style: TextStyle(
                      color: const Color(0xff4F4F4F),
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              Center(
                child: Container(
                  height: 268.h,
                  width: 272.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x66000000),
                        offset: Offset(0, 11),
                        blurRadius: 50,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 26.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCounterButton(
                    icon: Icons.remove,
                    onTap: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    quantity.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(width: 16.w),
                  CustomCounterButton(
                    icon: Icons.add,
                    onTap: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.h),

              Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(
                  color: const Color(0xff828282),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 80.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Rating
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 25.h),
                      SizedBox(width: 2.w),
                      Text(
                        '4.9',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  // Calories
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.orange,
                        size: 20.h,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        widget.calories,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  // Delivery Time
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.lightBlue,
                        size: 20.h,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '20 - 30 min',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 60.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 53.h,
                  child: CustomGradientContainer(
                    borderRadius: BorderRadius.circular(12.r),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
