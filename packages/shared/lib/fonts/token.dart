import 'package:flutter/material.dart';

class SilentMoonFont {
  SilentMoonFont();

  final String family = 'HelveticaNeue';

  final  size = _FontSize();

  final weight = _FontWeight();
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
