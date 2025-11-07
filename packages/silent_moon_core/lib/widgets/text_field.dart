import 'package:flutter/material.dart';

class SilentMoonTextField extends StatelessWidget {
  const SilentMoonTextField({
    super.key,
    this.type = SilentMoonTextFieldType.defaultType,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.style,
    this.onSuffixIconPressed,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final SilentMoonTextFieldStyle? style;
  final SilentMoonTextFieldType type;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    final myTheme = Theme.of(context).extension<SilentMoonTextFieldTheme>();

    final themeStyle = switch (type) {
      SilentMoonTextFieldType.defaultType => myTheme?.defaultStyle,
      SilentMoonTextFieldType.emailType => myTheme?.emailStyle,
      SilentMoonTextFieldType.passwordType => myTheme?.passwordStyle,
    };

    final baseStyle = themeStyle ?? const SilentMoonTextFieldStyle();

    final effectiveStyle = baseStyle.copyWith(
      surfaceColor: style?.surfaceColor,
      textStyle: style?.textStyle,
      hintStyle: style?.hintStyle,
      border: style?.border,
      contentPadding: style?.contentPadding,
      suffixIcon: style?.suffixIcon,
    );

    final finalSuffixIcon = suffixIcon ?? effectiveStyle.suffixIcon;

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: effectiveStyle.textStyle,
      decoration: InputDecoration(
        contentPadding: effectiveStyle.contentPadding,
        filled: true,
        fillColor: effectiveStyle.surfaceColor?.resolve(
          {},
        ),
        hintText: hintText,
        hintStyle: effectiveStyle.hintStyle,
        border: effectiveStyle.border?.resolve({}),
        enabledBorder: effectiveStyle.border?.resolve({}),
        focusedBorder: effectiveStyle.border?.resolve({
          WidgetState.focused,
        }),
        suffixIcon: finalSuffixIcon != null
            ? IconButton(
                onPressed: onSuffixIconPressed,
                icon: finalSuffixIcon,
              )
            : null,
      ),
    );
  }
}

@immutable
class SilentMoonTextFieldStyle {
  const SilentMoonTextFieldStyle({
    this.suffixIcon,
    this.surfaceColor,
    this.textStyle,
    this.hintStyle,
    this.border,
    this.contentPadding,
  });

  final WidgetStateProperty<Color?>? surfaceColor;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final WidgetStateProperty<InputBorder?>? border;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;

  SilentMoonTextFieldStyle copyWith({
    WidgetStateProperty<Color?>? surfaceColor,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    WidgetStateProperty<InputBorder?>? border,
    EdgeInsetsGeometry? contentPadding,
    Widget? suffixIcon,
  }) {
    return SilentMoonTextFieldStyle(
      surfaceColor: surfaceColor ?? this.surfaceColor,
      textStyle: textStyle ?? this.textStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      border: border ?? this.border,
      contentPadding: contentPadding ?? this.contentPadding,
      suffixIcon: suffixIcon ?? this.suffixIcon,
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
      contentPadding: EdgeInsetsGeometry.lerp(
        a?.contentPadding,
        b?.contentPadding,
        t,
      ),
      suffixIcon: t < 0.5 ? a?.suffixIcon : b?.suffixIcon,
    );
  }
}

class SilentMoonTextFieldTheme
    extends ThemeExtension<SilentMoonTextFieldTheme> {
  const SilentMoonTextFieldTheme({
    this.defaultStyle,
    this.emailStyle,
    this.passwordStyle,
  });

  final SilentMoonTextFieldStyle? defaultStyle;
  final SilentMoonTextFieldStyle? emailStyle;
  final SilentMoonTextFieldStyle? passwordStyle;

  @override
  ThemeExtension<SilentMoonTextFieldTheme> copyWith({
    SilentMoonTextFieldStyle? defaultStyle,
    SilentMoonTextFieldStyle? emailStyle,
    SilentMoonTextFieldStyle? passwordStyle,
  }) {
    return SilentMoonTextFieldTheme(
      defaultStyle: defaultStyle ?? this.defaultStyle,
      emailStyle: emailStyle ?? this.emailStyle,
      passwordStyle: passwordStyle ?? this.passwordStyle,
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
      defaultStyle: SilentMoonTextFieldStyle.lerp(
        defaultStyle,
        other.defaultStyle,
        t,
      ),
      emailStyle: SilentMoonTextFieldStyle.lerp(
        emailStyle,
        other.emailStyle,
        t,
      ),
      passwordStyle: SilentMoonTextFieldStyle.lerp(
        passwordStyle,
        other.passwordStyle,
        t,
      ),
    );
  }
}

enum SilentMoonTextFieldType {
  defaultType,
  emailType,
  passwordType,
}
