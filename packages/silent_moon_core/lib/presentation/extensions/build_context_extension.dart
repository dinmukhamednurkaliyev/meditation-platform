import 'package:flutter/material.dart';
import 'package:silent_moon_core/presentation/tokens/animation.dart';
import 'package:silent_moon_core/presentation/tokens/icon.dart';
import 'package:silent_moon_core/presentation/tokens/padding.dart';
import 'package:silent_moon_core/presentation/tokens/shape.dart';
import 'package:silent_moon_core/presentation/tokens/spacing.dart';
import 'package:silent_moon_core/presentation/tokens/text.dart';

extension SilentMoonBuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get color => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color? get iconThemeColor => theme.iconTheme.color;

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

  SpacingContext get spacing => (
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
}
