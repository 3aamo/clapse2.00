import 'dart:ui';

import 'package:clapse/theme/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  static const int clocktab = 0;
  static const int tasktab = 1;
  static const int repotab = 2;
  int selectedTabIndex = clocktab;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: context.o4.withOpacity(0.2),
          borderRadius: BorderRadius.circular(28.r)),
      height: 84.h,
      width: 220.w,
      margin: EdgeInsets.only(right: 24.r, left: 24.r, bottom: 24.r),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 6,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTabIndex = clocktab;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            color: selectedTabIndex == clocktab
                                ? themeData.colorScheme.surfaceTint
                                : themeData.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: selectedTabIndex == clocktab
                            ? SvgPicture.asset(
                                'assets/images/icon/clockdash.svg',
                                fit: BoxFit.scaleDown,
                                color: themeData.colorScheme.surfaceVariant,
                              )
                            : SvgPicture.asset(
                                'assets/images/icon/clockdash.svg',
                                color: context.pmain,
                                fit: BoxFit.scaleDown,
                              )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTabIndex = tasktab;
                  });
                },
                child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: selectedTabIndex == tasktab
                            ? themeData.colorScheme.surfaceTint
                            : themeData.colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(20)),
                    child: selectedTabIndex == tasktab
                        ? SvgPicture.asset(
                            'assets/images/icon/checkcircle.svg',
                            fit: BoxFit.scaleDown,
                            color: themeData.colorScheme.surfaceVariant,
                          )
                        : SvgPicture.asset(
                            'assets/images/icon/checkcircle.svg',
                            color: context.pmain,
                            fit: BoxFit.scaleDown,
                          )),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTabIndex = repotab;
                  });
                },
                child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: selectedTabIndex == repotab
                            ? themeData.colorScheme.surfaceTint
                            : themeData.colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(20)),
                    child: selectedTabIndex == repotab
                        ? SvgPicture.asset(
                            'assets/images/icon/barchart.svg',
                            fit: BoxFit.scaleDown,
                            color: themeData.colorScheme.surfaceVariant,
                          )
                        : SvgPicture.asset(
                            'assets/images/icon/barchart.svg',
                            color: context.pmain,
                            fit: BoxFit.scaleDown,
                          )),
              ),
              const SizedBox(
                width: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
