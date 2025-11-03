import 'package:flutter/material.dart';

typedef ShapeContext = ({ShapeRadiusContext radius});

typedef ShapeRadiusContext = ({
  BorderRadius min,
  BorderRadius tight,
  BorderRadius low,
  BorderRadius base,
  BorderRadius mid,
  BorderRadius high,
  BorderRadius wide,
  BorderRadius loose,
  BorderRadius max,
});

abstract class SilentMoonShape {
  const SilentMoonShape();
}

abstract class SilentMoonShapeRadius {
  const SilentMoonShapeRadius();
  static const BorderRadius min = BorderRadius.zero;
  static final BorderRadius tight = BorderRadius.circular(2);
  static final BorderRadius low = BorderRadius.circular(4);
  static final BorderRadius base = BorderRadius.circular(8);
  static final BorderRadius mid = BorderRadius.circular(12);
  static final BorderRadius high = BorderRadius.circular(16);
  static final BorderRadius wide = BorderRadius.circular(24);
  static final BorderRadius loose = BorderRadius.circular(32);
  static final BorderRadius max = BorderRadius.circular(999);
}
