import 'package:flutter/material.dart';
import 'package:shared/silent_moon.dart';

class SilentMoonFont {
  SilentMoonFont();

  final String family = 'HelveticaNeue';

  final size = _FontSize();

  final style = _FontStyle();

  final weight = _FontWeight();
}

class _FontStyle {
  _FontStyle();

  final displayLarge = TextStyle(
    fontSize: SilentMoon.font.size.max,
    fontWeight: SilentMoon.font.weight.extraBold,
  );
  final displayMedium = TextStyle(
    fontSize: SilentMoon.font.size.loose,
    fontWeight: SilentMoon.font.weight.bold,
  );
  final displaySmall = TextStyle(
    fontSize: SilentMoon.font.size.wide,
    fontWeight: SilentMoon.font.weight.semiBold,
  );
  final headlineLarge = TextStyle(
    fontSize: SilentMoon.font.size.high,
    fontWeight: SilentMoon.font.weight.semiBold,
  );
  final headlineMedium = TextStyle(
    fontSize: SilentMoon.font.size.mid,
    fontWeight: SilentMoon.font.weight.semiBold,
  );
  final headlineSmall = TextStyle(
    fontSize: SilentMoon.font.size.base,
    fontWeight: SilentMoon.font.weight.medium,
  );
  final titleLarge = TextStyle(
    fontSize: SilentMoon.font.size.high,
    fontWeight: SilentMoon.font.weight.medium,
  );
  final titleMedium = TextStyle(
    fontSize: SilentMoon.font.size.mid,
    fontWeight: SilentMoon.font.weight.medium,
  );
  final titleSmall = TextStyle(
    fontSize: SilentMoon.font.size.low,
    fontWeight: SilentMoon.font.weight.medium,
  );
  final bodyLarge = TextStyle(
    fontSize: SilentMoon.font.size.mid,
    fontWeight: SilentMoon.font.weight.normal,
  );
  final bodyMedium = TextStyle(
    fontSize: SilentMoon.font.size.base,
    fontWeight: SilentMoon.font.weight.normal,
  );
  final bodySmall = TextStyle(
    fontSize: SilentMoon.font.size.low,
    fontWeight: SilentMoon.font.weight.normal,
  );
  final labelLarge = TextStyle(
    fontSize: SilentMoon.font.size.base,
    fontWeight: SilentMoon.font.weight.semiBold,
  );
  final labelMedium = TextStyle(
    fontSize: SilentMoon.font.size.low,
    fontWeight: SilentMoon.font.weight.semiBold,
  );
  final labelSmall = TextStyle(
    fontSize: SilentMoon.font.size.tight,
    fontWeight: SilentMoon.font.weight.medium,
  );
}

class _FontSize {
  _FontSize();
  final double base = 14;
  final double high = 20;
  final double loose = 32;
  final double low = 12;
  final double max = 48;
  final double mid = 16;
  final double min = 0;
  final double tight = 10;
  final double wide = 24;
}

class _FontWeight {
  _FontWeight();
  final FontWeight black = .w900;
  final FontWeight bold = .w700;
  final FontWeight extraBold = .w800;
  final FontWeight extraLight = .w200;
  final FontWeight light = .w300;
  final FontWeight medium = .w500;
  final FontWeight normal = .w400;
  final FontWeight semiBold = .w600;
  final FontWeight thin = .w100;
}
