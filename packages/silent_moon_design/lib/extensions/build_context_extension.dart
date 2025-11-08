import 'package:flutter/material.dart';
import 'package:silent_moon_design/tokens/animation.dart';
import 'package:silent_moon_design/tokens/font.dart';
import 'package:silent_moon_design/tokens/icon.dart';
import 'package:silent_moon_design/tokens/padding.dart';
import 'package:silent_moon_design/tokens/shape.dart';
import 'package:silent_moon_design/tokens/spacing.dart';

typedef TextContext = ({
  TextStyleContext style,
  FontSizeContext size,
  FontWeightContext weight,
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

extension SilentMoonBuildContextExtension on BuildContext {
  AnimationContext get animation => (
    duration: (
      shortest: SilentMoonAnimationDuration.shortest,
      short: SilentMoonAnimationDuration.short,
      medium: SilentMoonAnimationDuration.medium,
      long: SilentMoonAnimationDuration.long,
      longest: SilentMoonAnimationDuration.longest,
    ),
    curve: (
      standard: SilentMoonAnimationCurve.standard,
      accelerate: SilentMoonAnimationCurve.accelerate,
      decelerate: SilentMoonAnimationCurve.decelerate,
    ),
  );

  ColorScheme get color => theme.colorScheme;

  IconContext get icon => (
    size: (
      min: SilentMoonIconSize.min,
      tight: SilentMoonIconSize.tight,
      low: SilentMoonIconSize.low,
      base: SilentMoonIconSize.low,
      mid: SilentMoonIconSize.mid,
      high: SilentMoonIconSize.high,
      wide: SilentMoonIconSize.wide,
      loose: SilentMoonIconSize.loose,
      max: SilentMoonIconSize.max,
    ),
  );

  Color? get iconThemeColor => theme.iconTheme.color;

  PaddingContext get padding => (
    size: (
      min: SilentMoonPaddingSize.min,
      tight: SilentMoonPaddingSize.tight,
      low: SilentMoonPaddingSize.low,
      base: SilentMoonPaddingSize.base,
      mid: SilentMoonPaddingSize.mid,
      high: SilentMoonPaddingSize.high,
      wide: SilentMoonPaddingSize.wide,
      loose: SilentMoonPaddingSize.loose,
      max: SilentMoonPaddingSize.max,
    ),
  );

  ShapeContext get shape => (
    radius: (
      min: SilentMoonShapeRadius.min,
      tight: SilentMoonShapeRadius.tight,
      low: SilentMoonShapeRadius.low,
      base: SilentMoonShapeRadius.base,
      mid: SilentMoonShapeRadius.mid,
      high: SilentMoonShapeRadius.high,
      wide: SilentMoonShapeRadius.wide,
      loose: SilentMoonShapeRadius.loose,
      max: SilentMoonShapeRadius.max,
    ),
  );

  SpacingContext get spacing => (
    size: (
      min: SilentMoonSpacingSize.min,
      tight: SilentMoonSpacingSize.tight,
      low: SilentMoonSpacingSize.low,
      base: SilentMoonSpacingSize.base,
      mid: SilentMoonSpacingSize.mid,
      high: SilentMoonSpacingSize.high,
      wide: SilentMoonSpacingSize.wide,
      loose: SilentMoonSpacingSize.loose,
      max: SilentMoonSpacingSize.max,
    ),
  );

  TextContext get text => (
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
      min: SilentMoonFontSize.min,
      tight: SilentMoonFontSize.tight,
      low: SilentMoonFontSize.low,
      base: SilentMoonFontSize.base,
      mid: SilentMoonFontSize.mid,
      high: SilentMoonFontSize.high,
      wide: SilentMoonFontSize.wide,
      loose: SilentMoonFontSize.loose,
      max: SilentMoonFontSize.max,
    ),
    weight: (
      thin: SilentMoonFontWeight.thin,
      extraLight: SilentMoonFontWeight.extraLight,
      light: SilentMoonFontWeight.light,
      normal: SilentMoonFontWeight.normal,
      medium: SilentMoonFontWeight.medium,
      semiBold: SilentMoonFontWeight.semiBold,
      bold: SilentMoonFontWeight.bold,
      extraBold: SilentMoonFontWeight.extraBold,
      black: SilentMoonFontWeight.black,
    ),
  );

  TextTheme get textTheme => theme.textTheme;

  ThemeData get theme => Theme.of(this);
}
