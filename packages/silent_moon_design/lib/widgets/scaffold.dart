import 'dart:ui';

import 'package:flutter/material.dart';

class SilentMoonScaffold extends StatelessWidget {
  const SilentMoonScaffold({
    required this.body,
    super.key,
    this.appBar,
    this.style,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final SilentMoonScaffoldStyle? style;

  @override
  Widget build(BuildContext context) {
    final themeStyle = Theme.of(
      context,
    ).extension<SilentMoonScaffoldTheme>()?.defaultStyle;

    final effectiveStyle =
        themeStyle?.copyWith(
          backgroundGradient: style?.backgroundGradient,
          appBarElevation: style?.appBarElevation,
          padding: style?.padding,
        ) ??
        style;

    final Widget content = Container(
      decoration: effectiveStyle?.backgroundGradient != null
          ? BoxDecoration(gradient: effectiveStyle!.backgroundGradient)
          : null,
      child: Padding(
        padding: effectiveStyle?.padding ?? EdgeInsets.zero,
        child: body,
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: content),
      backgroundColor: effectiveStyle?.backgroundGradient != null
          ? Colors.transparent
          : Theme.of(
              context,
            ).scaffoldBackgroundColor,
    );
  }
}

@immutable
class SilentMoonScaffoldStyle {
  const SilentMoonScaffoldStyle({
    this.backgroundGradient,
    this.appBarElevation,
    this.padding,
  });

  final Gradient? backgroundGradient;

  final double? appBarElevation;

  final EdgeInsetsGeometry? padding;

  SilentMoonScaffoldStyle copyWith({
    Gradient? backgroundGradient,
    double? appBarElevation,
    EdgeInsetsGeometry? padding,
  }) {
    return SilentMoonScaffoldStyle(
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      appBarElevation: appBarElevation ?? this.appBarElevation,
      padding: padding ?? this.padding,
    );
  }

  static SilentMoonScaffoldStyle? lerp(
    SilentMoonScaffoldStyle? a,
    SilentMoonScaffoldStyle? b,
    double t,
  ) {
    if (a == null && b == null) return null;

    final backgroundGradient = Gradient.lerp(
      a?.backgroundGradient,
      b?.backgroundGradient,
      t,
    );

    final appBarElevation = lerpDouble(
      a?.appBarElevation,
      b?.appBarElevation,
      t,
    );

    final padding = EdgeInsetsGeometry.lerp(a?.padding, b?.padding, t);

    return SilentMoonScaffoldStyle(
      backgroundGradient: backgroundGradient,
      appBarElevation: appBarElevation,
      padding: padding,
    );
  }
}

class SilentMoonScaffoldTheme extends ThemeExtension<SilentMoonScaffoldTheme> {
  const SilentMoonScaffoldTheme({
    required this.defaultStyle,
  });

  final SilentMoonScaffoldStyle defaultStyle;

  @override
  ThemeExtension<SilentMoonScaffoldTheme> copyWith({
    SilentMoonScaffoldStyle? defaultStyle,
  }) {
    return SilentMoonScaffoldTheme(
      defaultStyle: defaultStyle ?? this.defaultStyle,
    );
  }

  @override
  ThemeExtension<SilentMoonScaffoldTheme> lerp(
    ThemeExtension<SilentMoonScaffoldTheme>? other,
    double t,
  ) {
    if (other is! SilentMoonScaffoldTheme) {
      return this;
    }
    return SilentMoonScaffoldTheme(
      defaultStyle: SilentMoonScaffoldStyle.lerp(
        defaultStyle,
        other.defaultStyle,
        t,
      )!,
    );
  }
}
