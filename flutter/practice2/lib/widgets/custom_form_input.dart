import 'package:flutter/material.dart';

class CustomFormInput extends StatelessWidget {
  final String text;

  const CustomFormInput({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 62,
      child: TextFormField(
        style: const TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffD9D9D9),
          hintText: text,
          hintStyle: const TextStyle(color: Color(0xff707070), fontSize: 20),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
