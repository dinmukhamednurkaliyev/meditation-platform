import 'package:flutter/material.dart';
import 'package:silent_moon_core/tokens/color.dart';
import 'package:silent_moon_core/widgets/text_field.dart';

class SilentMoonTheme {
  const SilentMoonTheme._();

  static ThemeData get dark {
    return const SilentMoonTheme._().buildTheme(
      brightness: Brightness.dark,
      primary: SilentMoonSemanticColor.primary.main,
      onPrimary: SilentMoonSemanticColor.primary.on,
      secondary: SilentMoonSemanticColor.secondary.main,
      onSecondary: SilentMoonSemanticColor.secondary.on,
      tertiary: SilentMoonSemanticColor.tertiary.main,
      onTertiary: SilentMoonSemanticColor.tertiary.on,
    );
  }

  static ThemeData get light {
    return const SilentMoonTheme._().buildTheme(
      brightness: Brightness.light,
      primary: SilentMoonSemanticColor.primary.main,
      onPrimary: SilentMoonSemanticColor.primary.on,
      secondary: SilentMoonSemanticColor.secondary.main,
      onSecondary: SilentMoonSemanticColor.secondary.on,
      tertiary: SilentMoonSemanticColor.tertiary.main,
      onTertiary: SilentMoonSemanticColor.tertiary.on,
    );
  }

  ThemeData buildTheme({
    required Brightness brightness,
    required Color primary,
    required Color onPrimary,
    required Color secondary,
    required Color onSecondary,
    required Color tertiary,
    required Color onTertiary,
  }) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      tertiary: tertiary,
      onTertiary: onTertiary,
    );
    final extensions = <ThemeExtension<dynamic>>[
      SilentMoonTextFieldTheme(defaultStyle: silentMoonFieldStyle),
    ];
    return ThemeData(
      colorScheme: colorScheme,
      extensions: extensions,
    );
  }
}
