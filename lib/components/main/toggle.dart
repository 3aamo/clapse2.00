import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Toggle extends StatefulWidget {
  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SizedBox(
      width: 42,
      height: 32,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
            activeColor: themeData.colorScheme.surface,
            activeTrackColor: themeData.colorScheme.primary,
            inactiveTrackColor: themeData.colorScheme.surfaceVariant,
            inactiveThumbColor: themeData.colorScheme.onInverseSurface,
            trackOutlineWidth: MaterialStateProperty.all(3),
            overlayColor:
                MaterialStateProperty.all(themeData.colorScheme.primary),
            autofocus: false,
            value: isSwitched,
            onChanged: ((value) {
              setState(() {
                isSwitched = value;
              });
            })),
      ),
    );
  }
}
