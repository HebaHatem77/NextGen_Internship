import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/cart_data.dart';
import '../widgets/custom_list_tile.dart';

class CheckoutScreen extends StatelessWidget {
  final List<CartItem> items;

  const CheckoutScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff543A20),
      appBar: AppBar(
        backgroundColor: const Color(0xff543A20),
        iconTheme: const IconThemeData(color: Color(0xffCE9760)),
        title: Text(
          'Checkout',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deliver Address',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 12.h),

              Row(
                children: [
                  CircleAvatar(
                    radius: 24.w,
                    backgroundColor: Color(0xffCE9760),
                    child: SvgPicture.asset(
                      'assets/icons/location.svg',
                      width: 24.w,
                      height: 24.h,
                      colorFilter: ColorFilter.mode(
                        Color(0xff39260B),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        '1910, wien stadt, At',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: 80.w,
                    height: 21.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffCE9760),
                        foregroundColor: Color(0xff39260B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        'Change',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 46.h),

              Text(
                'Product List',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 4.h),

              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return Column(
                      children: [
                        CustomListTile(item: item),
                        if (index < items.length - 1)
                          Divider(
                            color: const Color(0xffCE9760),
                            thickness: 0.5,
                            height: 1,
                          ),
                      ],
                    );
                  },
                ),
              ),

              SizedBox(height: 16.h),

              SizedBox(
                width: double.infinity,
                height: 59.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffCE9760),
                    foregroundColor: Color(0xff39260B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Text(
                    'Continue Payment',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
