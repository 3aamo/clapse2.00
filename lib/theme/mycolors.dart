import 'package:flutter/material.dart';

class MyColors {
  // رنگ‌های لایت
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color pmain = Color(0xff2c9bdb);
  static const Color pdim = Color(0xff3d93cc);
  static const Color ptint = Color(0xffb2e3ff);
  static const Color pshade = Color(0xff002e4d);
  static const Color pcontainer = Color(0xff2c9bdb);
  static const Color smain = Color(0xffbf6ade);
  static const Color sdim = Color(0xffb962d9);
  static const Color stint = Color(0xfff5d9ff);
  static const Color sshade = Color(0xff7e50b2);
  static const Color scontainer = Color(0xffd5a8e5);
  static const Color tmain = Color(0xffa891f2);
  static const Color tdim = Color(0xff8567e5);
  static const Color ttint = Color(0xffccbdff);
  static const Color tshade = Color(0xff8567e5);
  static const Color tcontainer = Color(0xff9f85f2);
  static const Color emain = Color(0xffe14952);
  static const Color edim = Color(0xffb33c43);
  static const Color econtainer = Color(0xffe14952);
  static const Color o1 = Color(0xfffafcfc);
  static const Color o1blur = Color(0xfffafcfc);
  static const Color o2 = Color(0xffedf2f5);
  static const Color o2blur = Color(0xffedf2f5);
  static const Color o2variant = Color(0xffedf2f5);
  static const Color o3 = Color(0xffe4ebf0);
  static const Color o4 = Color(0xff879299);
  static const Color o5 = Color(0xff566166);
  static const Color o6 = Color(0xff292e33);
  static const Color o7 = Color(0xff0c0c0c);

  // رنگ‌های دارک
  static const Color whiteDark = Color(0xffffffff);
  static const Color blackDark = Color(0xff000000);
  static const Color pmainDark = Color(0xff75c2f6);
  static const Color pdimDark = Color(0xff79c9ff);
  static const Color ptintDark = Color(0xff99daff);
  static const Color pshadeDark = Color(0xff002e4d);
  static const Color pcontainerDark = Color(0xff75c2f6);
  static const Color smainDark = Color(0xffd4adfc);
  static const Color sdimDark = Color(0xffd2a6ff);
  static const Color stintDark = Color(0xfff5d9ff);
  static const Color sshadeDark = Color(0xff7e50b2);
  static const Color scontainerDark = Color(0xffc997fc);
  static const Color tmainDark = Color(0xffacafff);
  static const Color tdimDark = Color(0xffb2b5ff);
  static const Color ttintDark = Color(0xffbdbfff);
  static const Color tshadeDark = Color(0xffb2b5ff);
  static const Color tcontainerDark = Color(0xff999cff);
  static const Color emainDark = Color(0xfff25567);
  static const Color edimDark = Color(0xffff6678);
  static const Color econtainerDark = Color(0xfff25567);
  static const Color o1Dark = Color(0xff171e26);
  static const Color o1blurDark = Color(0xff171e26);
  static const Color o2Dark = Color(0xff0e151c);
  static const Color o2blurDark = Color(0xff0e151c);
  static const Color o2variantDark = Color(0xff212933);
  static const Color o3Dark = Color(0xff26303b);
  static const Color o4Dark = Color(0xff5e6c7d);
  static const Color o5Dark = Color(0xff798fa8);
  static const Color o6Dark = Color(0xff94b2d4);
  static const Color o7Dark = Color(0xfff3f3f4);
}

ColorScheme myLightColorScheme = const ColorScheme.light(
  surface: MyColors.white,
  onSurface: MyColors.black,
  primary: MyColors.pmain,
  onPrimary: MyColors.pdim,
  primaryContainer: MyColors.ptint,
  onPrimaryContainer: MyColors.pshade,
  onErrorContainer: MyColors.pcontainer,
  secondary: MyColors.smain,
  onSecondary: MyColors.sdim,
  secondaryContainer: MyColors.stint,
  shadow: MyColors.sshade,
  onSecondaryContainer: MyColors.scontainer,
  tertiary: MyColors.tmain,
  onTertiary: MyColors.tdim,
  tertiaryContainer: MyColors.ttint,
  scrim: MyColors.tshade,
  onTertiaryContainer: MyColors.tcontainer,
  error: MyColors.emain,
  onError: MyColors.edim,
  errorContainer: MyColors.econtainer,
  surfaceVariant: MyColors.o1,
  background: MyColors.o1blur,
  onSurfaceVariant: MyColors.o2,
  onBackground: MyColors.o2blur,
  inversePrimary: MyColors.o2variant,
  inverseSurface: MyColors.o3,
  onInverseSurface: MyColors.o4,
  outline: MyColors.o5,
  outlineVariant: MyColors.o6,
  surfaceTint: MyColors.o7,
);

ColorScheme myDarkColorScheme = const ColorScheme.dark(
  surface: MyColors.whiteDark,
  onSurface: MyColors.blackDark,
  primary: MyColors.pmainDark,
  onPrimary: MyColors.pdimDark,
  primaryContainer: MyColors.ptintDark,
  onPrimaryContainer: MyColors.pshadeDark,
  onErrorContainer: MyColors.pcontainerDark,
  secondary: MyColors.smainDark,
  onSecondary: MyColors.sdimDark,
  secondaryContainer: MyColors.stintDark,
  shadow: MyColors.sshadeDark,
  onSecondaryContainer: MyColors.scontainerDark,
  tertiary: MyColors.tmainDark,
  onTertiary: MyColors.tdimDark,
  tertiaryContainer: MyColors.ttintDark,
  scrim: MyColors.tshadeDark,
  onTertiaryContainer: MyColors.tcontainerDark,
  error: MyColors.emainDark,
  onError: MyColors.edimDark,
  errorContainer: MyColors.econtainerDark,
  surfaceVariant: MyColors.o1Dark,
  background: MyColors.o1blurDark,
  onSurfaceVariant: MyColors.o2Dark,
  onBackground: MyColors.o2blurDark,
  inversePrimary: MyColors.o2variantDark,
  inverseSurface: MyColors.o3Dark,
  onInverseSurface: MyColors.o4Dark,
  outline: MyColors.o5Dark,
  outlineVariant: MyColors.o6Dark,
  surfaceTint: MyColors.o7Dark,
);

extension MyThemeData on BuildContext {
  Color get white => Theme.of(this).colorScheme.surface;
  Color get black => Theme.of(this).colorScheme.onSurface;
  Color get pmain => Theme.of(this).colorScheme.primary;
  Color get pdim => Theme.of(this).colorScheme.onPrimary;
  Color get ptint => Theme.of(this).colorScheme.primaryContainer;
  Color get pshade => Theme.of(this).colorScheme.onPrimaryContainer;
  Color get pcontainer => Theme.of(this).colorScheme.onErrorContainer;
  Color get smain => Theme.of(this).colorScheme.secondary;
  Color get sdim => Theme.of(this).colorScheme.onSecondary;
  Color get stint => Theme.of(this).colorScheme.secondaryContainer;
  Color get sshade => Theme.of(this).colorScheme.shadow;
  Color get scontainer => Theme.of(this).colorScheme.onSecondaryContainer;
  Color get tmain => Theme.of(this).colorScheme.tertiary;
  Color get tdim => Theme.of(this).colorScheme.onTertiary;
  Color get ttint => Theme.of(this).colorScheme.tertiaryContainer;
  Color get tshade => Theme.of(this).colorScheme.scrim;
  Color get tcontainer => Theme.of(this).colorScheme.onTertiaryContainer;
  Color get emain => Theme.of(this).colorScheme.error;
  Color get edim => Theme.of(this).colorScheme.onError;
  Color get econtainer => Theme.of(this).colorScheme.errorContainer;
  Color get o1 => Theme.of(this).colorScheme.surfaceVariant;
  Color get o1blur => Theme.of(this).colorScheme.background;
  Color get o2 => Theme.of(this).colorScheme.onSurfaceVariant;
  Color get o2blur => Theme.of(this).colorScheme.onBackground;
  Color get o2variant => Theme.of(this).colorScheme.inversePrimary;
  Color get o3 => Theme.of(this).colorScheme.inverseSurface;
  Color get o4 => Theme.of(this).colorScheme.onInverseSurface;
  Color get o5 => Theme.of(this).colorScheme.outline;
  Color get o6 => Theme.of(this).colorScheme.outlineVariant;
  Color get o7 => Theme.of(this).colorScheme.surfaceTint;
}
