import 'package:flutter/material.dart';
import 'package:silent_moon_core/silent_moon_core.dart';
import 'package:silent_moon_core/tokens/padding.dart';
import 'package:silent_moon_core/tokens/shape.dart';

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
    const textTheme = TextTheme();
    final extensions = <ThemeExtension<dynamic>>[
      _buildTextFieldTheme(),
      _buildButtonTheme(colorScheme),
    ];
    return ThemeData(
      colorScheme: colorScheme,
      extensions: extensions,
      textTheme: textTheme,
      fontFamily: SilentMoonFontFamilyAsset.helveticaNeue,
    );
  }

  SilentMoonButtonTheme _buildButtonTheme(ColorScheme colorScheme) {
    return SilentMoonButtonTheme(
      defaultStyle: SilentMoonButtonStyle(
        backgroundColor: WidgetStateProperty.all(colorScheme.primary),
        foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: SilentMoonShapeRadius.loose,
          ),
        ),
      ),
    );
  }

  SilentMoonTextFieldTheme _buildTextFieldTheme() {
    final baseStyle = SilentMoonTextFieldStyle(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: SilentMoonPaddingSize.mid,
      ),
      border: WidgetStateProperty.all(InputBorder.none),
    );

    return SilentMoonTextFieldTheme(
      defaultStyle: baseStyle,
      emailStyle: baseStyle.copyWith(
        suffixIcon: const Icon(Icons.mail),
      ),
      passwordStyle: baseStyle.copyWith(
        suffixIcon: const Icon(Icons.lock),
      ),
    );
  }
}
