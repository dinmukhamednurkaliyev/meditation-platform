import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get color => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color? get iconThemeColor => theme.iconTheme.color;

  Text get text => (
    style: (
      displayLarge: textTheme.displayLarge,
      displayMedium: textTheme.displayMedium,
      displaySmall: textTheme.displaySmall,

      headlineLarge: textTheme.headlineLarge,
      headlineMedium: textTheme.headlineMedium,
      headlineSmall: textTheme.headlineSmall,

      titleLarge: textTheme.titleLarge,
      titleMedium: textTheme.titleMedium,
      titleSmall: textTheme.titleSmall,

      bodyLarge: textTheme.bodyLarge,
      bodyMedium: textTheme.bodyMedium,
      bodySmall: textTheme.bodySmall,

      labelLarge: textTheme.labelLarge,
      labelMedium: textTheme.labelMedium,
      labelSmall: textTheme.labelSmall,
    ),

    size: (
      min: 0.0,
      tight: 10.0,
      low: 12.0,
      base: 14.0,
      mid: 16.0,
      high: 20.0,
      wide: 24.0,
      loose: 32.0,
      max: 48.0,
    ),

    weight: (
      thin: FontWeight.w100,
      extraLight: FontWeight.w200,
      light: FontWeight.w300,
      normal: FontWeight.w400,
      medium: FontWeight.w500,
      semiBold: FontWeight.w600,
      bold: FontWeight.w700,
      extraBold: FontWeight.w800,
      black: FontWeight.w900,
    ),
  );

  Spacing get spacing => (
    size: (
      min: 0.0,
      tight: 4.0,
      low: 8.0,
      base: 12.0,
      mid: 16.0,
      high: 24.0,
      wide: 32.0,
      loose: 48.0,
      max: 64.0,
    ),
  );

  Icon get icon => (
    size: (
      min: 12.0,
      tight: 16.0,
      low: 20.0,
      base: 24.0,
      mid: 28.0,
      high: 32.0,
      wide: 40.0,
      loose: 48.0,
      max: 64.0,
    ),
  );

  Padding get padding => (
    size: (
      min: EdgeInsets.zero,
      tight: const EdgeInsets.all(4),
      low: const EdgeInsets.all(8),
      base: const EdgeInsets.all(12),
      mid: const EdgeInsets.all(16),
      high: const EdgeInsets.all(24),
      wide: const EdgeInsets.all(32),
      loose: const EdgeInsets.all(48),
      max: const EdgeInsets.all(64),
    ),
  );

  Shapes get shape => (
    radius: (
      min: BorderRadius.zero,
      tight: BorderRadius.circular(2),
      low: BorderRadius.circular(4),
      base: BorderRadius.circular(8),
      mid: BorderRadius.circular(12),
      high: BorderRadius.circular(16),
      wide: BorderRadius.circular(24),
      loose: BorderRadius.circular(32),
      max: BorderRadius.circular(999),
    ),
  );

  Animations get animation => (
    duration: (
      shortest: const Duration(milliseconds: 75),
      short: const Duration(milliseconds: 150),
      medium: const Duration(milliseconds: 300),
      long: const Duration(milliseconds: 500),
      longest: const Duration(milliseconds: 800),
    ),
    curve: (
      standard: Curves.easeInOut,
      accelerate: Curves.easeIn,
      decelerate: Curves.easeOut,
    ),
  );
}

typedef Text = ({TextStyles style, TextSizes size, TextWeights weight});

typedef TextWeights = ({
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

typedef TextStyles = ({
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

typedef TextSizes = ({
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

typedef Spacing = ({SpacingSizes size});

typedef Icon = ({IconSizes size});

typedef Padding = ({PaddingSizes size});

typedef PaddingSizes = ({
  EdgeInsets min,
  EdgeInsets tight,
  EdgeInsets low,
  EdgeInsets base,
  EdgeInsets mid,
  EdgeInsets high,
  EdgeInsets wide,
  EdgeInsets loose,
  EdgeInsets max,
});

typedef SpacingSizes = ({
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

typedef IconSizes = ({
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

typedef Shapes = ({ShapeRadii radius});

typedef ShapeRadii = ({
  BorderRadius min,
  BorderRadius tight,
  BorderRadius low,
  BorderRadius base,
  BorderRadius mid,
  BorderRadius high,
  BorderRadius wide,
  BorderRadius loose,
  BorderRadius max,
});

typedef Animations = ({AnimationDurations duration, AnimationCurves curve});

typedef AnimationDurations = ({
  Duration shortest,
  Duration short,
  Duration medium,
  Duration long,
  Duration longest,
});

typedef AnimationCurves = ({
  Curve standard,
  Curve accelerate,
  Curve decelerate,
});
