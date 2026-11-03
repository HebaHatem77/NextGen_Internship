import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/shoes_data.dart';
import '../widgets/custom_arrival_shoes_item.dart';
import '../widgets/custom_shoes_item.dart';
import 'details_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const Color backgroundColor = Color(0xFFF1F1F1);
  static const Color primaryColor = Color(0xFF5B9EE1);
  static const Color textColor = Color(0xFF1A2530);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        toolbarHeight: 70.h,
        leadingWidth: 65.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 12.r,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/combo shape.svg',
                width: 15.w,
                height: 14.h,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Mondolibug, Sylhet',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 21.r,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Frame.svg',
                  width: 20.w,
                  height: 20.h,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            23.w,
            10.h,
            23.w,
            24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                height: 46.h,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: const Color(0xFF707B81),
                      size: 21.sp,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Looking for shoes',
                          hintStyle: TextStyle(
                            color: const Color(0xFF707B81),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          isCollapsed: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30.h),

              // Popular Shoes Header
              _buildSectionHeader(
                title: 'Popular Shoes',
                onSeeAll: () {},
              ),

              SizedBox(height: 12.h),

              SizedBox(
                height: 225.h,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: shoes.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 157 / 200,
                  ),
                  itemBuilder: (context, index) {
                    final shoe = shoes[index];

                    return CustomShoesItem(
                      name: shoe.name,
                      imagePath: shoe.imagePath,
                      price: shoe.price.toStringAsFixed(2),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              shoe: shoe,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 35.h),

              _buildSectionHeader(
                title: 'New Arrivals',
                onSeeAll: () {},
              ),

              SizedBox(height: 12.h),

              SizedBox(
                height: 120.h,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: newArrivals.length,
                  separatorBuilder: (context, index) =>
                      SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final shoe = newArrivals[index];

                    return SizedBox(
                      height: 100.h,
                      child: CustomArrivalShoesItem(
                        name: shoe.name,
                        imagePath: shoe.imagePath,
                        price: shoe.price.toStringAsFixed(2),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                shoe: shoe,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader({
    required String title,
    required VoidCallback onSeeAll,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          onPressed: onSeeAll,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(40.w, 30.h),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'See all',
            style: TextStyle(
              color: primaryColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}