import 'package:flutter/material.dart';
import 'package:practice2/screens/login.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_input.dart';
import '../widgets/custom_text_button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              "assets/images/uisign.png",
              width: 262,
              fit: BoxFit.cover,
            ),
            Text(
              'Get Started',
              style: TextStyle(
                color: Color(0xff204188),
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Start opening your new account',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(height: 20),
            CustomFormInput(text: 'Full Name'),
            SizedBox(height: 14),
            CustomFormInput(text: 'Email'),
            SizedBox(height: 14),
            CustomFormInput(text: 'Password'),
            SizedBox(height: 14),
            CustomFormInput(text: 'Check Password'),
            Spacer(),
            CustomButton(text: 'SignUp', onPressed: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                CustomTextButton(text: 'Login', screen: Login()),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
