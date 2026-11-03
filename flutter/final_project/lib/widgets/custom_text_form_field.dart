import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.suffixIcon,
    this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Color(0xff0A0A0A),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 24.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          width: 327.w,
          constraints: BoxConstraints(minHeight: 62.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            color: Color(0xffEDF3F5),
          ),
          child: TextFormField(
            validator: widget.validator,
            obscureText: widget.isPassword && !isVisible,
            cursorColor: const Color(0xff4F4F4F),
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(
                color: Color(0xff919596),
                fontFamily: 'Inter',
                fontSize: 14.sp,
              ),

              filled: true,
              fillColor: Color(0xffEDF3F5),

              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xffEB5757),
                      ),
                    )
                  : widget.suffixIcon != null
                  ? Icon(widget.suffixIcon, color: Color(0xffEB5757))
                  : null,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: Color(0xffEDF3F5)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: Color(0xffEDF3F5)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: Color(0xffEDF3F5)),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: Color(0xffEDF3F5)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.r),
                borderSide: const BorderSide(color: Color(0xffEDF3F5)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
