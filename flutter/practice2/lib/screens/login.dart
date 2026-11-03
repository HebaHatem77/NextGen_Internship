import 'package:flutter/material.dart';
import 'package:practice2/screens/forget_password.dart';
import 'package:practice2/screens/signup.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_input.dart';
import '../widgets/custom_text_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(color: Color(0xffEDF6F9)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset(
              "assets/images/uiux.png",
              width: 262,
              fit: BoxFit.cover,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                color: Color(0xff204188),
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Sign in to access your account',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(height: 20),
            CustomFormInput(text: 'Enter'),
            SizedBox(height: 14),
            CustomFormInput(text: 'Password'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  text: 'Forgot password',
                  screen: ForgetPassword(),
                ),
              ],
            ),
            Spacer(),
            CustomButton(text: 'Login', onPressed: () {}),
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
