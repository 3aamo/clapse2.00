import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightTextStyles {
  // سبک‌های متن سفارشی ریسپانسیو
  static TextStyle regular13 = TextStyle(
    fontSize: 13.sp, // اندازه متن ریسپانسیو
    fontWeight: FontWeight.w400,
    color: const Color(0xff0c0c0c),
  );

  static TextStyle medium13 = TextStyle(
    fontSize: 13.sp, // اندازه متن ریسپانسیو
    fontWeight: FontWeight.w500,
    color: const Color(0xff0c0c0c),
  );

  static TextStyle bold13 = TextStyle(
    fontSize: 13.sp, // اندازه متن ریسپانسیو
    fontWeight: FontWeight.w700,
    color: const Color(0xff0c0c0c),
  );

  // سایر سبک‌های متن
}

final TextTheme lightTextTheme = TextTheme(
    headline1: LightTextStyles.regular13,
    bodyText1: LightTextStyles.bold13,
    bodyText2: LightTextStyles.medium13
    // سایر سبک‌های متن
    );

extension AliTextTheme on BuildContext {
  TextStyle get headline1 => Theme.of(this).textTheme.headline1!;
  TextStyle get bodyText1 => Theme.of(this).textTheme.bodyText1!;
  TextStyle get bodyText2 => Theme.of(this).textTheme.bodyText2!;
  // سایر سبک‌های متن
}

class AliTextStyles2 {
  // سبک‌های متن سفارشی ریسپانسیو
  static TextStyle headline1 = TextStyle(
    fontSize: 24.sp, // اندازه متن ریسپانسیو
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle bodyText1 = TextStyle(
    fontSize: 16.sp, // اندازه متن ریسپانسیو
    color: Colors.white,
  );

  static TextStyle bodyText2 = TextStyle(
    fontSize: 14.sp,

    // اندازه متن ریسپانسیو
    color: Colors.white,
  );

  // سایر سبک‌های متن
}

final TextTheme aliTextTheme2 = TextTheme(
  headline1: AliTextStyles2.headline1,
  bodyText1: AliTextStyles2.bodyText1,
  bodyText2: AliTextStyles2.bodyText2,
  // سایر سبک‌های متن
);
