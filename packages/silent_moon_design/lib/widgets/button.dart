import 'dart:ui';

import 'package:flutter/material.dart';

class SilentMoonButton extends StatelessWidget {
  const SilentMoonButton({
    required this.onPressed,
    required this.text,
    this.type = SilentMoonButtonType.defaultType,
    this.style,
    super.key,
  });

  final VoidCallback? onPressed;
  final String text;
  final SilentMoonButtonType type;
  final SilentMoonButtonStyle? style;
  @override
  Widget build(BuildContext context) {
    final myTheme = Theme.of(context).extension<SilentMoonButtonTheme>();

    final themeStyle = switch (type) {
      SilentMoonButtonType.defaultType => myTheme?.defaultStyle,
    };

    final baseStyle = themeStyle ?? const SilentMoonButtonStyle();

    final effectiveStyle = baseStyle.copyWith(
      backgroundColor: style?.backgroundColor,
      foregroundColor: style?.foregroundColor,
      overlayColor: style?.overlayColor,
      shadowColor: style?.shadowColor,
      elevation: style?.elevation,
      textStyle: style?.textStyle,
      padding: style?.padding,
      minimumSize: style?.minimumSize,
      shape: style?.shape,
    );

    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: effectiveStyle.backgroundColor?.resolve({}),
      foregroundColor: effectiveStyle.foregroundColor?.resolve({}),
      shadowColor: effectiveStyle.shadowColor?.resolve({}),
      elevation: effectiveStyle.elevation?.resolve({}),
      textStyle: effectiveStyle.textStyle?.resolve({}),
      padding: effectiveStyle.padding?.resolve({}),
      minimumSize: effectiveStyle.minimumSize?.resolve({}),
      shape: effectiveStyle.shape?.resolve({}),
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(text),
    );
  }
}

@immutable
class SilentMoonButtonStyle {
  const SilentMoonButtonStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.overlayColor,
    this.shadowColor,
    this.elevation,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.shape,
  });

  final WidgetStateProperty<Color?>? backgroundColor;

  final WidgetStateProperty<Color?>? foregroundColor;

  final WidgetStateProperty<Color?>? overlayColor;

  final WidgetStateProperty<Color?>? shadowColor;

  final WidgetStateProperty<double?>? elevation;

  final WidgetStateProperty<TextStyle?>? textStyle;

  final WidgetStateProperty<EdgeInsetsGeometry?>? padding;

  final WidgetStateProperty<Size?>? minimumSize;

  final WidgetStateProperty<OutlinedBorder?>? shape;

  SilentMoonButtonStyle copyWith({
    WidgetStateProperty<Color?>? backgroundColor,
    WidgetStateProperty<Color?>? foregroundColor,
    WidgetStateProperty<Color?>? overlayColor,
    WidgetStateProperty<Color?>? shadowColor,
    WidgetStateProperty<double?>? elevation,
    WidgetStateProperty<TextStyle?>? textStyle,
    WidgetStateProperty<EdgeInsetsGeometry?>? padding,
    WidgetStateProperty<Size?>? minimumSize,
    WidgetStateProperty<OutlinedBorder?>? shape,
  }) {
    return SilentMoonButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      overlayColor: overlayColor ?? this.overlayColor,
      shadowColor: shadowColor ?? this.shadowColor,
      elevation: elevation ?? this.elevation,
      textStyle: textStyle ?? this.textStyle,
      padding: padding ?? this.padding,
      minimumSize: minimumSize ?? this.minimumSize,
      shape: shape ?? this.shape,
    );
  }

  static SilentMoonButtonStyle? lerp(
    SilentMoonButtonStyle? a,
    SilentMoonButtonStyle? b,
    double t,
  ) {
    if (a == null && b == null) return null;
    return SilentMoonButtonStyle(
      backgroundColor: WidgetStateProperty.lerp<Color?>(
        a?.backgroundColor,
        b?.backgroundColor,
        t,
        Color.lerp,
      ),
      foregroundColor: WidgetStateProperty.lerp<Color?>(
        a?.foregroundColor,
        b?.foregroundColor,
        t,
        Color.lerp,
      ),
      overlayColor: WidgetStateProperty.lerp<Color?>(
        a?.overlayColor,
        b?.overlayColor,
        t,
        Color.lerp,
      ),
      shadowColor: WidgetStateProperty.lerp<Color?>(
        a?.shadowColor,
        b?.shadowColor,
        t,
        Color.lerp,
      ),
      elevation: WidgetStateProperty.lerp<double?>(
        a?.elevation,
        b?.elevation,
        t,
        lerpDouble,
      ),
      textStyle: WidgetStateProperty.lerp<TextStyle?>(
        a?.textStyle,
        b?.textStyle,
        t,
        TextStyle.lerp,
      ),
      padding: WidgetStateProperty.lerp<EdgeInsetsGeometry?>(
        a?.padding,
        b?.padding,
        t,
        EdgeInsetsGeometry.lerp,
      ),
      minimumSize: WidgetStateProperty.lerp<Size?>(
        a?.minimumSize,
        b?.minimumSize,
        t,
        Size.lerp,
      ),
      shape: WidgetStateProperty.lerp<OutlinedBorder?>(
        a?.shape,
        b?.shape,
        t,
        (a, b, t) => ShapeBorder.lerp(a, b, t) as OutlinedBorder?,
      ),
    );
  }
}

class SilentMoonButtonTheme extends ThemeExtension<SilentMoonButtonTheme> {
  const SilentMoonButtonTheme({
    this.defaultStyle,
  });

  final SilentMoonButtonStyle? defaultStyle;

  @override
  ThemeExtension<SilentMoonButtonTheme> copyWith({
    SilentMoonButtonStyle? defaultStyle,
  }) {
    return SilentMoonButtonTheme(
      defaultStyle: defaultStyle ?? this.defaultStyle,
    );
  }

  @override
  ThemeExtension<SilentMoonButtonTheme> lerp(
    ThemeExtension<SilentMoonButtonTheme>? other,
    double t,
  ) {
    if (other is! SilentMoonButtonTheme) {
      return this;
    }
    return SilentMoonButtonTheme(
      defaultStyle: SilentMoonButtonStyle.lerp(
        defaultStyle,
        other.defaultStyle,
        t,
      ),
    );
  }
}

enum SilentMoonButtonType {
  defaultType,
}
