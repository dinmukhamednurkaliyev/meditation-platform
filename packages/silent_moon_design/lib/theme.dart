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

    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: SilentMoonFontFamily.helveticaNeue,
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
