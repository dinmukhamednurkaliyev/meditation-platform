import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';

class SilentMoonScaffold extends StatelessWidget {
  factory SilentMoonScaffold.primary({
    required BuildContext context,
    required Widget body,
    Key? key,
    EdgeInsetsGeometry? padding,
  }) {
    final style = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>()!.scaffold.primary;

    return SilentMoonScaffold._(
      style: style,
      key: key,
      body: body,
      padding: padding,
    );
  }

  const SilentMoonScaffold._({
    required this.body,
    required this.style,
    super.key,
    this.padding,
  });
  final Widget body;
  final SilentMoonScaffoldStyle style;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? style.padding;
    var child = body;

    if (effectivePadding != null) {
      child = Padding(
        padding: effectivePadding,
        child: child,
      );
    }
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        key: key,
        backgroundColor: style.backgroundColor,
        body: SafeArea(child: child),
      ),
    );
  }
}

@immutable
class SilentMoonScaffoldStyle {
  const SilentMoonScaffoldStyle({this.backgroundColor, this.padding});

  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;

  SilentMoonScaffoldStyle copyWith(
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
  ) {
    return SilentMoonScaffoldStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
    );
  }

  SilentMoonScaffoldStyle lerp(SilentMoonScaffoldStyle? other, double t) {
    if (other is! SilentMoonScaffoldStyle) {
      return this;
    }
    return SilentMoonScaffoldStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t),
    );
  }
}

@immutable
class SilentMoonScaffoldTheme {
  const SilentMoonScaffoldTheme({
    required this.primary,
  });

  final SilentMoonScaffoldStyle primary;

  SilentMoonScaffoldTheme copyWith({
    SilentMoonScaffoldStyle? primary,
  }) {
    return SilentMoonScaffoldTheme(
      primary: primary ?? this.primary,
    );
  }

  SilentMoonScaffoldTheme lerp(SilentMoonScaffoldTheme? other, double t) {
    if (other is! SilentMoonScaffoldTheme) {
      return this;
    }
    return SilentMoonScaffoldTheme(
      primary: primary.lerp(other.primary, t),
    );
  }
}
