import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';

class SilentMoonTextField extends StatelessWidget {
  factory SilentMoonTextField.email({
    required BuildContext context,
    Key? key,
    TextEditingController? controller,
    TextInputType? textInputType,
    bool? obscureText,
  }) {
    final style = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>()!.textField.email;
    return SilentMoonTextField._(
      key: key,
      controller: controller,
      style: style,
      obscureText: obscureText ?? false,
      textInputType: textInputType ?? TextInputType.emailAddress,
    );
  }
  factory SilentMoonTextField.password({
    required BuildContext context,
    Key? key,
    TextEditingController? controller,
    TextInputType? textInputType,
    bool? obscureText,
  }) {
    final style = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>()!.textField.password;
    return SilentMoonTextField._(
      key: key,
      controller: controller,
      style: style,
      obscureText: obscureText ?? true,
      textInputType: textInputType ?? TextInputType.visiblePassword,
    );
  }
  factory SilentMoonTextField.primary({
    required BuildContext context,
    Key? key,
    TextEditingController? controller,
    TextInputType? textInputType,
    bool obscureText = false,
  }) {
    final style = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>()!.textField.primary;

    return SilentMoonTextField._(
      key: key,
      controller: controller,
      style: style,
      textInputType: textInputType,
      obscureText: obscureText,
    );
  }

  const SilentMoonTextField._({
    required this.style,
    super.key,
    this.controller,
    this.obscureText = false,
    this.textInputType,
  });

  final SilentMoonTextFieldStyle style;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    final baseDecoration = style.decoration ?? const InputDecoration();

    final composedDecoration = baseDecoration.copyWith(
      labelText: style.labelText,
      prefixIcon: style.prefixIcon,
      helperText: style.helperText,
    );

    return TextField(
      controller: controller,
      decoration: composedDecoration,
      style: style.textStyle,
      obscureText: obscureText,
      keyboardType: textInputType,
    );
  }
}

@immutable
class SilentMoonTextFieldStyle {
  const SilentMoonTextFieldStyle({
    this.obscureText,
    this.labelText,
    this.prefixIcon,
    this.helperText,
    this.decoration,
    this.textStyle,
  });
  final String? labelText;
  final Widget? prefixIcon;
  final bool? obscureText;
  final String? helperText;
  final InputDecoration? decoration;
  final TextStyle? textStyle;

  SilentMoonTextFieldStyle copyWith({
    String? labelText,
    Widget? prefixIcon,
    String? helperText,
    InputDecoration? decoration,
    TextStyle? textStyle,
    bool? obscureText,
  }) {
    return SilentMoonTextFieldStyle(
      labelText: labelText ?? this.labelText,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      helperText: helperText ?? this.helperText,
      decoration: decoration ?? this.decoration,
      textStyle: textStyle ?? this.textStyle,
      obscureText: obscureText ?? this.obscureText,
    );
  }

  SilentMoonTextFieldStyle lerp(SilentMoonTextFieldStyle? other, double t) {
    if (other is! SilentMoonTextFieldStyle) {
      return this;
    }

    return SilentMoonTextFieldStyle(
      labelText: t < 0.5 ? labelText : other.labelText,
      prefixIcon: t < 0.5 ? prefixIcon : other.prefixIcon,
      helperText: t < 0.5 ? helperText : other.helperText,
      decoration: t < 0.5 ? decoration : other.decoration,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      obscureText: t < 0.5 ? obscureText : other.obscureText,
    );
  }
}

@immutable
class SilentMoonTextFieldTheme {
  const SilentMoonTextFieldTheme({
    required this.primary,
    required this.email,
    required this.password,
  });
  final SilentMoonTextFieldStyle primary;
  final SilentMoonTextFieldStyle email;
  final SilentMoonTextFieldStyle password;

  SilentMoonTextFieldTheme copyWith({
    SilentMoonTextFieldStyle? primary,
    SilentMoonTextFieldStyle? email,
    SilentMoonTextFieldStyle? password,
  }) {
    return SilentMoonTextFieldTheme(
      primary: primary ?? this.primary,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  SilentMoonTextFieldTheme lerp(SilentMoonTextFieldTheme? other, double t) {
    if (other is! SilentMoonTextFieldTheme) {
      return this;
    }
    return SilentMoonTextFieldTheme(
      primary: primary.lerp(other.primary, t),
      email: email.lerp(other.email, t),
      password: password.lerp(other.password, t),
    );
  }
}
