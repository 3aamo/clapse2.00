import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  const CustomRadioButton({
    super.key,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        InkWell(
          onTap: () {
            onChanged(!isSelected);
          },
          child: isSelected
              ? SvgPicture.asset(
                  isDarkMode
                      ? 'assets/images/icon/radiodark.svg'
                      : 'assets/images/icon/radio.svg',
                  height: 28.h,
                  width: 28.w,
                )
              : SvgPicture.asset(
                  isDarkMode
                      ? 'assets/images/icon/radiodark2.svg'
                      : 'assets/images/icon/radio2.svg',
                  height: 28.h,
                  width: 28.w,
                ),
        ),
      ],
    );
  }
}
