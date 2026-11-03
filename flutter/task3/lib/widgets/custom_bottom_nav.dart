import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.reactCircle,
      curveSize: 70.h,
      height: 50.h,
      color: Colors.black,
      activeColor: const Color(0xff543A20),
      backgroundColor: const Color(0xffCE9760),
      initialActiveIndex: selectedIndex,
      items: [
        TabItem(
          icon: AnimatedScale(
            scale: selectedIndex == 0 ? 0.4 : 1.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 22.w,
              height: 22.h,
              colorFilter: ColorFilter.mode(
                selectedIndex == 0 ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        TabItem(
          icon: Transform.scale(
            scale: selectedIndex == 1 ? 0.4 : 1.0,
            child: SvgPicture.asset(
              'assets/icons/shopping-cart.svg',
              width: 22.w,
              height: 22.h,
              colorFilter: ColorFilter.mode(
                selectedIndex == 1 ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          title: '',
        ),
        TabItem(
          icon: Transform.scale(
            scale: selectedIndex == 2 ? 0.4 : 1.0,
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              width: 22.w,
              height: 22.h,
              colorFilter: ColorFilter.mode(
                selectedIndex == 2 ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          title: '',
        ),
        TabItem(
          icon: Transform.scale(
            scale: selectedIndex == 3 ? 0.4 : 1.0,
            child: SvgPicture.asset(
              'assets/icons/user.svg',
              width: 22.w,
              height: 22.h,
              colorFilter: ColorFilter.mode(
                selectedIndex == 3 ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          title: '',
        ),
      ],
      onTap: onItemSelected,
    );
  }
}
