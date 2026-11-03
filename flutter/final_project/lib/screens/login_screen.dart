import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    final availableHeight = MediaQuery.of(context).viewInsets.bottom > 0
        ? MediaQuery.sizeOf(context).height -
        MediaQuery.viewInsetsOf(context).bottom
        : screenHeight;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: (availableHeight * 0.20).clamp(40.0, 150.0)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.w),
                  child: CustomText(
                    normalText: 'Quick Delivery at your ',
                    colorfulText: 'Doorstep',
                  ),
                ),
                SizedBox(height: screenHeight * 0.06),
                CustomTextFormField(
                  label: 'Email',
                  hint: 'Type your e-mail',
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 18.h),
                CustomTextFormField(
                  label: 'Password',
                  hint: 'Type your password',
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: (availableHeight * 0.18).clamp(16.0, 60.0)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44.w),
                  child: SizedBox(
                    width: double.infinity,
                    height: 53.h,
                    child: CustomGradientButton(
                      text: 'Login',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }
                      },
                      fontSize: 22.sp,
                      radius: 12.r,
                      borderRadius: BorderRadius.circular(12.r),
                      height: 53.h,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}