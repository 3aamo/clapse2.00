import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Input2 extends StatefulWidget {
  @override
  State<Input2> createState() => _InputState2();
}

class _InputState2 extends State<Input2> {
  String errorTextVal = '';
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);
    return Center(
      child: SizedBox(
        width: 174.w,
        child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          style: themeData.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
          onChanged: (value) {
            setState(() {
              if (value.contains(' ')) {
                errorTextVal = 'dont use';
              } else {
                errorTextVal = '';
              }
            });
          },
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 17.r, horizontal: 17.r),
              labelText: '',
              hintText: 'Value',
              hintStyle:
                  TextStyle(color: themeData.colorScheme.onInverseSurface),
              errorText: errorTextVal.isEmpty ? null : errorTextVal,
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: themeData.colorScheme.error,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: themeData.colorScheme.error,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: themeData.colorScheme.primary, width: 2)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: themeData.colorScheme.inverseSurface))),
        ),
      ),
    );
  }
}
