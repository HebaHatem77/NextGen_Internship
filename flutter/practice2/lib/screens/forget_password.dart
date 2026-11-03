import 'package:flutter/material.dart';
import 'package:practice2/screens/login.dart';
import 'package:practice2/screens/signup.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_form_input.dart';
import '../widgets/custom_text_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(color: Color(0xffEDF6F9)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Text(
              'Forgot your password',
              style: TextStyle(
                color: Color(0xff204188),
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Enter your username and we’ll help you reset your password.',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(height: 20),
            CustomFormInput(text: 'Email or username'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CustomTextButton(text: 'Login', screen: Login())],
            ),
            Spacer(),
            CustomButton(text: 'Send', onPressed: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(color: Color(0xff204188), fontSize: 15),
                ),
                CustomTextButton(text: 'SignUp', screen: Signup()),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
