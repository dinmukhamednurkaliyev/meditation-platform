import 'package:flutter/material.dart';

typedef AnimationContext = ({
  AnimationDurationContext duration,
  AnimationCurveContext curve,
});

typedef AnimationDurationContext = ({
  Duration shortest,
  Duration short,
  Duration medium,
  Duration long,
  Duration longest,
});

typedef AnimationCurveContext = ({
  Curve standard,
  Curve accelerate,
  Curve decelerate,
});

class SilentMoonAnimation {
  const SilentMoonAnimation();
}

class SilentMoonAnimationDuration {
  const SilentMoonAnimationDuration();
  static const Duration shortest = Duration(milliseconds: 75);
  static const Duration short = Duration(milliseconds: 150);
  static const Duration medium = Duration(milliseconds: 300);
  static const Duration long = Duration(milliseconds: 500);
  static const Duration longest = Duration(milliseconds: 800);
}

class SilentMoonAnimationCurve {
  const SilentMoonAnimationCurve();
  static const Curve standard = Curves.easeInOut;
  static const Curve accelerate = Curves.easeIn;
  static const Curve decelerate = Curves.easeOut;
}
