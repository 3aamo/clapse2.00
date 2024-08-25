import 'package:clapse/components/main/buttomnavigationbar.dart';
import 'package:clapse/components/main/button.dart';
import 'package:clapse/components/main/checkbox.dart';
import 'package:clapse/components/main/header.dart';
import 'package:clapse/components/main/input.dart';
import 'package:clapse/components/main/input2.dart';
import 'package:clapse/components/main/radiobutton.dart';
import 'package:clapse/components/main/tab2.dart';
import 'package:clapse/components/main/toggle.dart';
import 'package:clapse/components/main/verificaton.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _selectedOption = '';
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final ThemeData themeData = Theme.of(context);
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: themeData.colorScheme.onSurfaceVariant,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Header(
                  label: 'Welcome To ',
                  label2: 'Clapse',
                  showContainers: const [true, false, false, true],
                  color1: themeData.colorScheme.error,
                  svgpath1: 'assets/images/icon/barchart.svg',
                  firstActive: () {
                    print('First Container Clicked!');
                  },
                  textcolor: context.o7,
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: themeData.colorScheme.surfaceVariant),
                      child: Padding(
                        padding: EdgeInsets.all(28.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Tab2(),
                            SizedBox(
                              height: 24.h,
                            ),
                            Text('Project Name',
                                style: context.bodyText1.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(
                              height: 16.h,
                            ),
                            Input(
                              width: swidth,
                              labletext: '',
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Income / hour',
                                      style: themeData.textTheme.bodyMedium!
                                          .copyWith(
                                        fontSize: swidth * 0.0373,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: sheight * 0.0172,
                                    ),
                                    Input(
                                      width: 174.w,
                                      labletext: 'Password',
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Currency',
                                      style: themeData.textTheme.bodyMedium!
                                          .copyWith(
                                        fontSize: swidth * 0.0373,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: sheight * 0.0172,
                                    ),
                                    Input2()
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 428 / 225,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: themeData.colorScheme.surfaceVariant),
                        child: Padding(
                          padding: EdgeInsets.all(28.r),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleCheck(),
                                  SizedBox(width: 12.w),
                                  Expanded(
                                    child: Text('Show Income',
                                        style: themeData.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18.sp)),
                                  ),
                                  Toggle(),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  SquareCheck(),
                                  SizedBox(width: swidth * 0.0280),
                                  Expanded(
                                    child: Text('Show Income',
                                        style: themeData.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: swidth * 0.0420)),
                                  ),
                                  Toggle(),
                                ],
                              ),
                              SizedBox(
                                height: sheight * 0.0215,
                              ),
                              Verification()
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      swidth * 0.037, 20, swidth * 0.037, 0),
                  child: Button(
                    width: swidth,
                    height: 60.h,
                    lable: 'Export',
                    showicon: [true, false],
                    ontab: () {
                      print('First Container Clicked!');
                    },
                    colorbutton: context.pmain,
                    colortext: context.o1,
                    svgpath1: 'assets/images/icon/barchart.svg',
                    coloricon: context.o1,
                  ),
                ),
              ]),
            ),
          ),
        ),
        //  SafeArea(
        //  child: Image.asset(
        //  'assets/images/icon/3.png',
        //  color: Colors.white.withOpacity(0.5),
        //  colorBlendMode: BlendMode.modulate,
        //  ),
        // )
      ],
    );
  }
}
