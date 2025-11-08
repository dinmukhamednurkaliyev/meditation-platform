import 'package:flutter/material.dart';

typedef FontContext = ({
  FontStyleContext style,
  FontSizeContext size,
  FontWeightContext weight,
});

typedef FontSizeContext = ({
  double min,
  double tight,
  double low,
  double base,
  double mid,
  double high,
  double wide,
  double loose,
  double max,
});

typedef FontStyleContext = ({
  TextStyle? displayLarge,
  TextStyle? displayMedium,
  TextStyle? displaySmall,

  TextStyle? headlineLarge,
  TextStyle? headlineMedium,
  TextStyle? headlineSmall,

  TextStyle? titleLarge,
  TextStyle? titleMedium,
  TextStyle? titleSmall,

  TextStyle? bodyLarge,
  TextStyle? bodyMedium,
  TextStyle? bodySmall,

  TextStyle? labelLarge,
  TextStyle? labelMedium,
  TextStyle? labelSmall,
});

typedef FontWeightContext = ({
  FontWeight thin,
  FontWeight extraLight,
  FontWeight light,
  FontWeight normal,
  FontWeight medium,
  FontWeight semiBold,
  FontWeight bold,
  FontWeight extraBold,
  FontWeight black,
});

class SilentMoonFontFamily {
  const SilentMoonFontFamily._();

  static const helveticaNeue = 'HelveticaNeue';
}

abstract class SilentMoonFontSize {
  const SilentMoonFontSize();
  static const double min = 0;
  static const double tight = 10;
  static const double low = 12;
  static const double base = 14;
  static const double mid = 16;
  static const double high = 20;
  static const double wide = 24;
  static const double loose = 32;
  static const double max = 48;
}

abstract class SilentMoonFontWeight {
  const SilentMoonFontWeight();
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight normal = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}
