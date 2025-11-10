import 'package:flutter/material.dart';

class SilentMoonFont {
  SilentMoonFont();

  final String family = 'HelveticaNeue';

  final size = _FontSize();

  final weight = _FontWeight();
}

class _FontSize {
  _FontSize();
  double get base => 14;
  double get high => 20;
  double get loose => 32;
  double get low => 12;
  double get max => 48;
  double get mid => 16;
  double get min => 0;
  double get tight => 10;
  double get wide => 24;
}

class _FontWeight {
  _FontWeight();
  FontWeight get black => FontWeight.w900;
  FontWeight get bold => FontWeight.w700;
  FontWeight get extraBold => FontWeight.w800;
  FontWeight get extraLight => FontWeight.w200;
  FontWeight get light => FontWeight.w300;
  FontWeight get medium => FontWeight.w500;
  FontWeight get normal => FontWeight.w400;
  FontWeight get semiBold => FontWeight.w600;
  FontWeight get thin => FontWeight.w100;
}
