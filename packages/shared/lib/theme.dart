import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';
import 'package:shared/silent_moon.dart';
import 'package:shared/widgets/scaffold.dart';
import 'package:shared/widgets/text_field.dart';

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
      onTertiary: SilentMoon.color.semantic.tertiary.on,
    );

    final textTheme = TextTheme(
      displayLarge: TextStyle(
        fontSize: SilentMoon.font.size.max,
        fontWeight: SilentMoon.font.weight.extraBold,
      ),
      displayMedium: TextStyle(
        fontSize: SilentMoon.font.size.loose,
        fontWeight: SilentMoon.font.weight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: SilentMoon.font.size.wide,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),

      headlineLarge: TextStyle(
        fontSize: SilentMoon.font.size.high,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      headlineMedium: TextStyle(
        fontSize: SilentMoon.font.size.mid,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      headlineSmall: TextStyle(
        fontSize: SilentMoon.font.size.base,
        fontWeight: SilentMoon.font.weight.medium,
      ),

      titleLarge: TextStyle(
        fontSize: SilentMoon.font.size.high,
        fontWeight: SilentMoon.font.weight.medium,
      ),
      titleMedium: TextStyle(
        fontSize: SilentMoon.font.size.mid,
        fontWeight: SilentMoon.font.weight.medium,
      ),
      titleSmall: TextStyle(
        fontSize: SilentMoon.font.size.low,
        fontWeight: SilentMoon.font.weight.medium,
      ),

      bodyLarge: TextStyle(
        fontSize: SilentMoon.font.size.mid,
        fontWeight: SilentMoon.font.weight.normal,
      ),
      bodyMedium: TextStyle(
        fontSize: SilentMoon.font.size.base,
        fontWeight: SilentMoon.font.weight.normal,
      ),
      bodySmall: TextStyle(
        fontSize: SilentMoon.font.size.low,
        fontWeight: SilentMoon.font.weight.normal,
      ),

      labelLarge: TextStyle(
        fontSize: SilentMoon.font.size.base,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      labelMedium: TextStyle(
        fontSize: SilentMoon.font.size.low,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      labelSmall: TextStyle(
        fontSize: SilentMoon.font.size.tight,
        fontWeight: SilentMoon.font.weight.medium,
      ),
    );

    final fontFamily = SilentMoon.font.family;

    final decoration = InputDecoration(
      filled: true,
      fillColor: SilentMoon.color.semantic.input.main,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SilentMoon.dimension.radius.high),
        borderSide: BorderSide.none,
      ),
      hintStyle: textTheme.bodyLarge?.copyWith(
        color: SilentMoon.color.semantic.input.on,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: SilentMoon.dimension.spacing.mid,
        vertical: SilentMoon.dimension.spacing.mid,
      ),
    );
    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      textTheme: textTheme,
      extensions: [
        SilentMoonWidgetThemeExtension(
          textField: SilentMoonTextFieldTheme(
            primary: const SilentMoonTextFieldStyle(),
            email: SilentMoonTextFieldStyle(
              decoration: decoration.copyWith(
                hintText: 'Email address',
              ),
            ),
            password: SilentMoonTextFieldStyle(
              decoration: decoration.copyWith(
                hintText: 'Password',
              ),
            ),
          ),
          scaffold: SilentMoonScaffoldTheme(
            primary: SilentMoonScaffoldStyle(
              padding: EdgeInsets.all(SilentMoon.dimension.padding.mid),
            ),
          ),
        ),
      ],
    );
  }
}
