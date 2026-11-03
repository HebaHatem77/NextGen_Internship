import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_gradient_container.dart';
import '../widgets/custom_text.dart';
import 'login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientContainer(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/delivery-man.png',
                height: MediaQuery.sizeOf(context).height * 0.60,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 36.w,
                    right: 36.w,
                    bottom: 4.h,
                    top: 30.h,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        normalText: 'Quick Delivery at your ',
                        colorfulText: 'Doorstep',
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Home delivery and online reservation system for restaurants and cafe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffBDBDBD),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      SizedBox(height: 42.h),
                      CustomGradientButton(
                        text: 'Get Started',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        fontSize: 24.sp,
                        radius: 40.r,
                        width: 210.w,
                        height: 68.h,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      SizedBox(height: 12.h),
                    ],
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
