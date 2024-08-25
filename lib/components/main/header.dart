import 'package:clapse/components/local/gradiant.dart';

import 'package:clapse/theme/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatefulWidget {
  final String label;
  final String label2;
  final List<bool> showContainers;
  final String? svgpath1;
  final String? svgpath2;
  final String? svgpath3;
  final String? svgpath4;
  final Color textcolor;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final VoidCallback? firstActive;
  final VoidCallback? secondActive;
  final VoidCallback? thirdActive;
  final VoidCallback? fourthActive;

  const Header({
    super.key,
    required this.label,
    required this.showContainers,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.svgpath1,
    this.svgpath2,
    this.svgpath3,
    this.svgpath4,
    this.firstActive,
    this.secondActive,
    this.thirdActive,
    this.fourthActive,
    required this.label2,
    required this.textcolor,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);
    return AspectRatio(
      aspectRatio: 428 / 76,
      child: Container(
        decoration: BoxDecoration(
          color: context.o2,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.r, 8.r, 20.r, 16.r),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 52 / 52,
                child: Visibility(
                  visible: widget.showContainers[0],
                  child: GestureDetector(
                    onTap: widget.firstActive,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: themeData.colorScheme.onInverseSurface
                                .withOpacity(0.2),
                          )),
                      child: SvgPicture.asset(
                        widget.svgpath1 ?? 'assets/default.svg',
                        color: widget.color1,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              if (widget.showContainers[1])
                AspectRatio(
                  aspectRatio: 52 / 52,
                  child: Container(
                      //  height: 52.h,
                      // width: 52.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: themeData.colorScheme.onInverseSurface
                                .withOpacity(0.2),
                          )),
                      child: SvgPicture.asset(
                        widget.svgpath2 ?? 'assets/default.svg',
                        color: widget.color2,
                        fit: BoxFit.scaleDown,
                      )),
                ),
              SizedBox(
                width: 24.w,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.label,
                        style: themeData.textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp,
                            color: widget.textcolor)),
                    GradientText(
                      widget.label2,
                      style: themeData.textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 24.sp),
                      text: widget.label2,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              //  Container(
              //   width: 47,
              //    height: 24,
              //    decoration: BoxDecoration(
              //      color: themeData.colorScheme.primaryContainer,
              //    borderRadius: BorderRadius.circular(8)),
              //  child: Center(
              //    child: Text('Free',
              //      style: TextStyle(
              //        fontSize: 16, fontWeight: FontWeight.w700))),
              // ),
              SizedBox(
                width: 16.w,
              ),
              if (widget.showContainers[2])
                AspectRatio(
                  aspectRatio: 52 / 52,
                  child: Container(
                    // height: 52.h,
                    // width: 52.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: themeData.colorScheme.onInverseSurface
                              .withOpacity(0.2),
                        )),
                    child: SvgPicture.asset(
                      widget.svgpath3 ?? 'assets/default.svg',
                      color: widget.color3,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              SizedBox(
                width: 8.w,
              ),

              AspectRatio(
                aspectRatio: 52 / 52,
                child: Visibility(
                  visible: widget.showContainers[3],
                  child: Container(
                      // height: 52.h,
                      // width: 52.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: themeData.colorScheme.onInverseSurface
                                .withOpacity(0.2),
                          )),
                      child: SvgPicture.asset(
                        widget.svgpath4 ?? 'assets/default.svg',
                        color: widget.color4,
                        fit: BoxFit.scaleDown,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
