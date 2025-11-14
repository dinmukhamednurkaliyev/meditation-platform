import 'package:flutter/material.dart';

class SilentMoonAnimation {
  SilentMoonAnimation();

  final curve = _AnimationCurve();

  final duration = _AnimationDuration();
}

class _AnimationCurve {
  _AnimationCurve();

  final Curve accelerate = Curves.easeIn;
  final Curve decelerate = Curves.easeOut;
  final Curve standard = Curves.easeInOut;
}

class _AnimationDuration {
  _AnimationDuration();

  final Duration long = const Duration(milliseconds: 500);
  final Duration longest = const Duration(milliseconds: 800);
  final Duration medium = const Duration(milliseconds: 300);
  final Duration short = const Duration(milliseconds: 150);
  final Duration shortest = const Duration(milliseconds: 75);
}
