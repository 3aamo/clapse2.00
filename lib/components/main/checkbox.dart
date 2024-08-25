import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SquareCheck extends StatefulWidget {
  @override
  State<SquareCheck> createState() => _SquareCheckState();
}

class _SquareCheckState extends State<SquareCheck> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: isChecked
            ? SvgPicture.asset(
                isDarkMode
                    ? 'assets/images/icon/Squareboxdark.svg'
                    : 'assets/images/icon/Squarebox.svg',
                height: 28.h,
                width: 28.w,
              )
            : SvgPicture.asset(
                isDarkMode
                    ? 'assets/images/icon/Squareboxdark2.svg'
                    : 'assets/images/icon/Squarebox2.svg',
                height: 28.h,
                width: 28.w,
              ));
  }
}

class CircleCheck extends StatefulWidget {
  @override
  State<CircleCheck> createState() => _CircleCheckState();
}

class _CircleCheckState extends State<CircleCheck> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: isChecked
            ? SvgPicture.asset(
                isDarkMode
                    ? 'assets/images/icon/Circleboxdark.svg'
                    : 'assets/images/icon/Circlebox.svg',
                height: 28.h,
                width: 28.w,
              )
            : SvgPicture.asset(
                isDarkMode
                    ? 'assets/images/icon/Circleboxdark2.svg'
                    : 'assets/images/icon/Circlebox2.svg',
                height: 28.h,
                width: 28.w,
              ));
  }
}
