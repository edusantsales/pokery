import 'package:flutter/material.dart';

import '../constants/constants.dart';

extension Themes on ThemeData {
  static TextTheme get inter {
    const inter = TextStyle(fontFamily: 'Inter');
    return TextTheme(
      titleLarge: inter.copyWith(fontSize: kPadding * 4),
      titleMedium: inter.copyWith(fontSize: kPadding * 3),
      titleSmall: inter.copyWith(fontSize: kPadding * 2),
      bodyLarge: inter.copyWith(fontSize: kPadding * 3),
      bodyMedium: inter.copyWith(fontSize: kPadding * 2),
      bodySmall: inter.copyWith(fontSize: kPadding),
      labelLarge: inter.copyWith(fontSize: kPadding * 2),
      labelMedium: inter.copyWith(fontSize: kPadding),
      labelSmall: inter.copyWith(fontSize: kPadding / 2),
    );
  }

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: kGreyColor60,
        onPrimary: kWhiteColor,
        secondary: kGreyColor40,
        onSecondary: kWhiteColor,
        background: kWhiteColor,
        onBackground: kGreyColor,
        error: kRedColor,
        onError: kWhiteColor,
        surface: kGreenColor,
        onSurface: kWhiteColor,
      ),
      typography: Typography(
        black: inter.apply(
          bodyColor: kGreyColor,
          decorationColor: kGreyColor,
          displayColor: kGreyColor,
        ),
        white: inter.apply(
          bodyColor: kWhiteColor,
          decorationColor: kWhiteColor,
          displayColor: kWhiteColor,
        ),
      ),
    );
  }
}
