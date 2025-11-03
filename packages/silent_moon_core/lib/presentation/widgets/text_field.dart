import 'package:flutter/material.dart';

class SilentMoonTextField extends StatelessWidget {
  const SilentMoonTextField({
    super.key,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.style,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final SilentMoonTextFieldStyle? style;

  @override
  Widget build(BuildContext context) {
    final themeStyle = Theme.of(
      context,
    ).extension<SilentMoonTextFieldTheme>()?.style;

    final effectiveStyle =
        themeStyle?.copyWith(
          surfaceColor: style?.surfaceColor ?? themeStyle.surfaceColor,
          textStyle: style?.textStyle ?? themeStyle.textStyle,
          hintStyle: style?.hintStyle ?? themeStyle.hintStyle,
          border: style?.border ?? themeStyle.border,
        ) ??
        style;

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: effectiveStyle?.textStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: effectiveStyle?.surfaceColor?.resolve(
          {},
        ), //
        hintText: hintText,
        hintStyle: effectiveStyle?.hintStyle,
        border: effectiveStyle?.border?.resolve({}),
        enabledBorder: effectiveStyle?.border?.resolve({}),
        focusedBorder: effectiveStyle?.border?.resolve({
          WidgetState.focused,
        }),
      ),
    );
  }
}

@immutable
class SilentMoonTextFieldStyle {
  const SilentMoonTextFieldStyle({
    this.surfaceColor,
    this.textStyle,
    this.hintStyle,
    this.border,
  });

  final WidgetStateProperty<Color?>? surfaceColor;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  final WidgetStateProperty<InputBorder?>? border;

  SilentMoonTextFieldStyle copyWith({
    WidgetStateProperty<Color?>? surfaceColor,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    WidgetStateProperty<InputBorder?>? border,
  }) {
    return SilentMoonTextFieldStyle(
      surfaceColor: surfaceColor ?? this.surfaceColor,
      textStyle: textStyle ?? this.textStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      border: border ?? this.border,
    );
  }

  static SilentMoonTextFieldStyle? lerp(
    SilentMoonTextFieldStyle? a,
    SilentMoonTextFieldStyle? b,
    double t,
  ) {
    if (a == null && b == null) {
      return null;
    }
    return SilentMoonTextFieldStyle(
      surfaceColor: WidgetStateProperty.lerp<Color>(
        a?.surfaceColor as WidgetStateProperty<Color>?,
        b?.surfaceColor as WidgetStateProperty<Color>?,
        t,
        Color.lerp,
      ),
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
      hintStyle: TextStyle.lerp(a?.hintStyle, b?.hintStyle, t),
      border: WidgetStateProperty.resolveWith(
        (states) =>
            ShapeBorder.lerp(
                  a?.border?.resolve(states),
                  b?.border?.resolve(states),
                  t,
                )
                as InputBorder?,
      ),
    );
  }
}

class SilentMoonTextFieldTheme
    extends ThemeExtension<SilentMoonTextFieldTheme> {
  const SilentMoonTextFieldTheme({
    this.style,
  });

  final SilentMoonTextFieldStyle? style;

  @override
  ThemeExtension<SilentMoonTextFieldTheme> copyWith({
    SilentMoonTextFieldStyle? style,
  }) {
    return SilentMoonTextFieldTheme(
      style: style ?? this.style,
    );
  }

  @override
  ThemeExtension<SilentMoonTextFieldTheme> lerp(
    ThemeExtension<SilentMoonTextFieldTheme>? other,
    double t,
  ) {
    if (other is! SilentMoonTextFieldTheme) {
      return this;
    }
    return SilentMoonTextFieldTheme(
      style: SilentMoonTextFieldStyle.lerp(style, other.style, t),
    );
  }
}
