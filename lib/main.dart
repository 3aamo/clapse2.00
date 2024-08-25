import 'package:clapse/components/main/buttomnavigationbar.dart';
import 'package:clapse/components/main/toggle.dart';
import 'package:clapse/home.dart';
import 'package:clapse/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926), // اندازه طراحی اپلیکیشن شما
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
              themeMode: ThemeMode.light,
              theme: TAppTheme.lightTheme,
              darkTheme: TAppTheme.darkTheme,
              home: Stack(
                children: [
                  Home(),
                  Align(alignment: Alignment.bottomCenter, child: NavBar())
                ],
              ));
        });
  }
}
