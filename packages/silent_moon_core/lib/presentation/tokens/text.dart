import 'package:flutter/material.dart';

typedef TextContext = ({
  TextStyleContext style,
  TextSizeContext size,
  TextWeightContext weight,
});

typedef TextWeightContext = ({
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

typedef TextStyleContext = ({
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

typedef TextSizeContext = ({
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
