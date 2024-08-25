import 'package:clapse/theme/mycolors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatefulWidget {
  final double width;
  final double height;
  final String lable;
  final List<bool> showicon;
  final String? svgpath1;
  final String? svgpath2;
  final VoidCallback ontab;
  final Color colorbutton;
  final Color colortext;
  final Color? coloricon;

  const Button(
      {super.key,
      required this.width,
      required this.height,
      required this.lable,
      required this.showicon,
      this.svgpath1,
      this.svgpath2,
      required this.ontab,
      required this.colorbutton,
      required this.colortext,
      this.coloricon});
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextButton(
        onPressed: widget.ontab,
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: widget.colorbutton),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.showicon[0])
                SvgPicture.asset(
                  widget.svgpath1 ?? 'assets/default.svg',
                  fit: BoxFit.scaleDown,
                  color: widget.coloricon,
                ),
              const SizedBox(
                width: 8,
              ),
              Text(widget.lable,
                  style: themeData.textTheme.bodyMedium!.copyWith(
                      fontSize: 18.sp,
                      color: widget.colortext,
                      fontWeight: FontWeight.w700)),
              const SizedBox(
                width: 8,
              ),
              if (widget.showicon[1])
                SvgPicture.asset(
                  widget.svgpath2 ?? 'assets/default.svg',
                  fit: BoxFit.scaleDown,
                  color: widget.coloricon,
                )
            ],
          ),
        ));
  }
}

class Button2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextButton(
        onPressed: () {},
        child: Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: themeData.colorScheme.onSurfaceVariant),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle_outlined,
                color: themeData.colorScheme.onPrimary,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Button',
                  style: themeData.textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: themeData.colorScheme.onPrimary)),
            ],
          ),
        ));
  }
}

class Button3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextButton(
        onPressed: () {},
        child: Container(
          width: 104,
          height: 48,
          decoration: BoxDecoration(
              border: Border.all(
                  color: themeData.colorScheme.inverseSurface, width: 2),
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Button',
                  style: themeData.textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: themeData.colorScheme.primary)),
            ],
          ),
        ));
  }
}

class Button4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextButton(
        onPressed: () {},
        child: Container(
          width: 104,
          height: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: themeData.colorScheme.inverseSurface),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Button',
                  style: themeData.textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: themeData.colorScheme.onInverseSurface)),
            ],
          ),
        ));
  }
}

class Button5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return TextButton(
        onPressed: () {},
        child: Container(
          width: 110,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: themeData.colorScheme.inversePrimary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Button',
                  style: themeData.textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: themeData.colorScheme.surfaceTint)),
            ],
          ),
        ));
  }
}
