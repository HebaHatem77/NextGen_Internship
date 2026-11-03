import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/shoes_data.dart';
import '../widgets/circle_button.dart';

class DetailsScreen extends StatelessWidget {
  final Shoes shoe;

  const DetailsScreen({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                child: Row(
                  children: [
                  CircleButton(
                      icon: Icons.arrow_back_ios_new,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Expanded(
                      child: Text(
                        "Men's Shoes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1A2530),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    CircleButton(
                      icon: Icons.shopping_bag_outlined,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 290.h,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 48.h,
                      left: 30.w,
                      right: 30.w,
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF5B9EE1),
                            width: 1.2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.elliptical(200.r, 40.r),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.w,
                        vertical: 25.h,
                      ),
                      child: Image.asset(
                        shoe.imagePath,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),

                    Positioned(
                      bottom: 35.h,
                      child: Container(
                        width: 42.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF5B9EE1),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF5B9EE1).withValues(alpha: 0.25),
                              blurRadius: 12.r,
                              offset: Offset(0, 4.h),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h),

              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 25.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BEST SELLER',
                      style: TextStyle(
                        color: Color(0xFF5B9EE1),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(height: 5.h),

                    Text(
                      shoe.name,
                      style: TextStyle(
                        color: Color(0xFF1A2530),
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 8.h),

                    Text(
                      '\$${shoe.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Color(0xFF1A2530),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 12.h),

                    Text(
                      '${shoe.name} combines comfort, '
                      'style, and everyday performance. '
                      'Discover a design that fits your style.',
                      style: TextStyle(
                        color: const Color(0xFF707B81),
                        fontSize: 14.sp,
                        height: 1.6,
                      ),
                    ),

                    SizedBox(height: 18.h),

                    Text(
                      'Gallery',
                      style: TextStyle(
                        color: Color(0xFF1A2530),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 12.h),

                    SizedBox(
                      height: 65.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 12.w),
                        itemBuilder: (context, index) {
                          return Container(
                            width: 65.w,
                            padding: EdgeInsets.all(7.w),
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F1F1),
                              borderRadius: BorderRadius.circular(14.r),
                            ),
                            child: Image.asset(
                              shoe.imagePath,
                              fit: BoxFit.contain,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10.r,
              offset: Offset(0, -3.h),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      color: const Color(0xFF707B81),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '\$${shoe.price.toStringAsFixed(2)}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF1A2530),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            SizedBox(
              width: 155.w,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${shoe.name} added to cart'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5B9EE1),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
