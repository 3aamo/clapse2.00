import 'package:clapse/theme/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab2 extends StatefulWidget {
  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  int selectedTabIndex = monthtab;
  static const int monthtab = 0;
  static const int weektab = 1;
  static const int alltab = 2;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);
    return AspectRatio(
      aspectRatio: 372 / 46,
      child: Container(
        decoration: ShapeDecoration(
          color: context.o2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(2.r),
                child: AspectRatio(
                  aspectRatio: 121.33 / 42,
                  child: Container(
                    // width: 121.3333.w,
                    // height: 42.h,
                    decoration: BoxDecoration(
                        color: selectedTabIndex == alltab
                            ? themeData.colorScheme.surfaceVariant
                            : themeData.colorScheme.onSurfaceVariant,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTabIndex = alltab;
                        });
                      },
                      child: Text(
                        'All',
                        style: themeData.textTheme.bodyMedium!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: selectedTabIndex == alltab
                                ? FontWeight.w700
                                : FontWeight.w500,
                            color: selectedTabIndex == alltab
                                ? themeData.colorScheme.onPrimary
                                : themeData.colorScheme.onInverseSurface),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(2.r),
                child: AspectRatio(
                  aspectRatio: 121.33 / 42,
                  child: Container(
                    // width: 121.3333.w,
                    // height: 42.h,
                    decoration: BoxDecoration(
                        color: selectedTabIndex == weektab
                            ? themeData.colorScheme.surfaceVariant
                            : themeData.colorScheme.onSurfaceVariant,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTabIndex = weektab;
                        });
                      },
                      child: Text(
                        'Week',
                        style: themeData.textTheme.bodyMedium!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: selectedTabIndex == weektab
                                ? FontWeight.w700
                                : FontWeight.w500,
                            color: selectedTabIndex == weektab
                                ? themeData.colorScheme.onPrimary
                                : themeData.colorScheme.onInverseSurface),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(2.r),
                child: AspectRatio(
                  aspectRatio: 121.33 / 42,
                  child: Container(
                    //width: 121.3333.w,
                    //height: 42.h,
                    decoration: BoxDecoration(
                        color: selectedTabIndex == monthtab
                            ? themeData.colorScheme.surfaceVariant
                            : themeData.colorScheme.onSurfaceVariant,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTabIndex = monthtab;
                        });
                      },
                      child: Text(
                        'Month',
                        style: themeData.textTheme.bodyMedium!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: selectedTabIndex == monthtab
                                ? FontWeight.w700
                                : FontWeight.w500,
                            color: selectedTabIndex == monthtab
                                ? themeData.colorScheme.onPrimary
                                : themeData.colorScheme.onInverseSurface),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
