import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    final defaultPinTheme = PinTheme(
        width: swidth * 0.1308,
        height: sheight * 0.0604,
        textStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: themeData.colorScheme.surfaceTint),
        decoration: BoxDecoration(
            border: Border.all(color: themeData.colorScheme.inverseSurface),
            borderRadius: BorderRadius.circular(12)));
    return Container(
      child: Pinput(
          length: 6,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: defaultPinTheme.copyDecorationWith(
              border:
                  Border.all(color: themeData.colorScheme.primary, width: 2))),
    );
  }
}
