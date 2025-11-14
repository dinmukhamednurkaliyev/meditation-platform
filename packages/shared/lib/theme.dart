import 'package:flutter/material.dart';
import 'package:shared/silent_moon.dart';

class SilentMoonTheme {
  const SilentMoonTheme._();

  static ThemeData get dark => _build(Brightness.dark);

  static ThemeData get light => _build(Brightness.light);

  static ThemeData _build(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: SilentMoon.color.semantic.primary.main,
      brightness: brightness,
      primary: SilentMoon.color.semantic.primary.main,
      onPrimary: SilentMoon.color.semantic.primary.on,
      secondary: SilentMoon.color.semantic.secondary.main,
      onSecondary: SilentMoon.color.semantic.secondary.on,
      tertiary: SilentMoon.color.semantic.tertiary.main,
    );

    final textTheme = TextTheme(
      displayLarge: SilentMoon.font.style.displayLarge,
      displayMedium: SilentMoon.font.style.displayMedium,
      displaySmall: SilentMoon.font.style.displaySmall,

      headlineLarge: SilentMoon.font.style.headlineLarge,
      headlineMedium: SilentMoon.font.style.headlineMedium,
      headlineSmall: SilentMoon.font.style.headlineSmall,

      titleLarge: SilentMoon.font.style.titleLarge,
      titleMedium: SilentMoon.font.style.titleMedium,
      titleSmall: SilentMoon.font.style.titleSmall,

      bodyLarge: SilentMoon.font.style.bodyLarge,
      bodyMedium: SilentMoon.font.style.bodyMedium,
      bodySmall: SilentMoon.font.style.bodySmall,

      labelLarge: SilentMoon.font.style.labelLarge,
      labelMedium: SilentMoon.font.style.labelMedium,
      labelSmall: SilentMoon.font.style.labelSmall,
    );

    final fontFamily = SilentMoon.font.family;

    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      textTheme: textTheme,
      extensions: const [],
    );
  }
}
