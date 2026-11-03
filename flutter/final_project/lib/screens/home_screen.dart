import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/food_data.dart';
import '../widgets/custom_food_category.dart';
import '../widgets/custom_food_item.dart';
import '../widgets/custom_gradient_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        toolbarHeight: 70.h,
        titleSpacing: 12.w,
        title: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Color(0xff4F4F4F), size: 30.h),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SizedBox(
              width: 47.w,
              height: 47.h,
              child: CustomGradientContainer(
                borderRadius: BorderRadius.circular(47.r),
                child: Center(
                  child: Icon(Icons.search, color: Colors.white, size: 30.h),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h),
              Text(
                'Hi Alex',
                style: TextStyle(
                  color: Color(0xffEB5757),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              ),
              Text(
                'Find your Delicious Food',
                style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 14.h),
              SizedBox(
                height: 95.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomFoodCategory(
                      imagePath: 'assets/icons/Pizza.svg',
                      categoryName: 'Italian',
                    ),
                    CustomFoodCategory(
                      imagePath: 'assets/icons/Sushi.svg',
                      categoryName: 'Japanese',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 32.h),
              Text(
                'Popular',
                style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 15.h),

              SizedBox(
                height: 300.h,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 40.h,
                  physics: const BouncingScrollPhysics(),
                  childAspectRatio: 0.6,
                  children: List.generate(foods.length, (index) {
                    final food = foods[index];

                    return CustomFoodItem(
                      title: food.title,
                      calories: food.calories,
                      imagePath: food.imagePath,
                      price: food.price.toStringAsFixed(2),
                    );
                  }),
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
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
            ],
          ),
        ),
      ),
    );
  }
}
