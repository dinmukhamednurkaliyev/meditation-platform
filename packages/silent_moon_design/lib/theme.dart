import 'package:flutter/material.dart';
import 'package:silent_moon_design/silent_moon_design.dart';
import 'package:silent_moon_design/tokens/padding.dart';
import 'package:silent_moon_design/tokens/shape.dart';

class SilentMoonTheme {
  const SilentMoonTheme._();

  static ThemeData get dark => _build(Brightness.dark);
  static ThemeData get light => _build(Brightness.light);

  static ThemeData _build(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: SilentMoonSemanticColor.primary.main,
      brightness: brightness,
      primary: SilentMoonSemanticColor.primary.main,
      onPrimary: SilentMoonSemanticColor.primary.on,
      secondary: SilentMoonSemanticColor.secondary.main,
      onSecondary: SilentMoonSemanticColor.secondary.on,
      tertiary: SilentMoonSemanticColor.tertiary.main,
      onTertiary: SilentMoonSemanticColor.tertiary.on,
    );

    const textTheme = TextTheme(
      displayLarge: TextStyle(
        fontSize: SilentMoonFontSize.max,
        fontWeight: SilentMoonFontWeight.extraBold,
      ),
      displayMedium: TextStyle(
        fontSize: SilentMoonFontSize.loose,
        fontWeight: SilentMoonFontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: SilentMoonFontSize.wide,
        fontWeight: SilentMoonFontWeight.semiBold,
      ),

      headlineLarge: TextStyle(
        fontSize: SilentMoonFontSize.high,
        fontWeight: SilentMoonFontWeight.semiBold,
      ),
      headlineMedium: TextStyle(
        fontSize: SilentMoonFontSize.mid,
        fontWeight: SilentMoonFontWeight.semiBold,
      ),
      headlineSmall: TextStyle(
        fontSize: SilentMoonFontSize.base,
        fontWeight: SilentMoonFontWeight.medium,
      ),

      titleLarge: TextStyle(
        fontSize: SilentMoonFontSize.high,
        fontWeight: SilentMoonFontWeight.medium,
      ),
      titleMedium: TextStyle(
        fontSize: SilentMoonFontSize.mid,
        fontWeight: SilentMoonFontWeight.medium,
      ),
      titleSmall: TextStyle(
        fontSize: SilentMoonFontSize.low,
        fontWeight: SilentMoonFontWeight.medium,
      ),

      bodyLarge: TextStyle(
        fontSize: SilentMoonFontSize.mid,
        fontWeight: SilentMoonFontWeight.normal,
      ),
      bodyMedium: TextStyle(
        fontSize: SilentMoonFontSize.base,
        fontWeight: SilentMoonFontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontSize: SilentMoonFontSize.low,
        fontWeight: SilentMoonFontWeight.normal,
      ),

      labelLarge: TextStyle(
        fontSize: SilentMoonFontSize.base,
        fontWeight: SilentMoonFontWeight.semiBold,
      ),
      labelMedium: TextStyle(
        fontSize: SilentMoonFontSize.low,
        fontWeight: SilentMoonFontWeight.semiBold,
      ),
      labelSmall: TextStyle(
        fontSize: SilentMoonFontSize.tight,
        fontWeight: SilentMoonFontWeight.medium,
      ),
    );

    const fontFamily = SilentMoonFontFamily.helveticaNeue;
    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      textTheme: textTheme,
      extensions: [
        _buildTextFieldTheme(),
        _buildButtonTheme(colorScheme),
      ],
    );
  }

  static SilentMoonButtonTheme _buildButtonTheme(ColorScheme colorScheme) {
    return SilentMoonButtonTheme(
      defaultStyle: SilentMoonButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
        foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
        textStyle: const WidgetStatePropertyAll(TextStyle()),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SilentMoonShapeRadius.loose),
          ),
        ),
      ),
    );
  }

  static SilentMoonTextFieldTheme _buildTextFieldTheme() {
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
