import 'package:flutter/material.dart';

class SilentMoonAnimation {
  SilentMoonAnimation();

  final curve = _AnimationCurve();

  final duration = _AnimationDuration();
}

class _AnimationCurve {
  _AnimationCurve();

  Curve get accelerate => Curves.easeIn;
  Curve get decelerate => Curves.easeOut;
  Curve get standard => Curves.easeInOut;
}

class _AnimationDuration {
  _AnimationDuration();

  Duration get long => const Duration(milliseconds: 500);
  Duration get longest => const Duration(milliseconds: 800);
  Duration get medium => const Duration(milliseconds: 300);
  Duration get short => const Duration(milliseconds: 150);
  Duration get shortest => const Duration(milliseconds: 75);
}
