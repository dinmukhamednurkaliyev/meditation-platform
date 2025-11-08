typedef ShapeContext = ({ShapeRadiusContext radius});

typedef ShapeRadiusContext = ({
  double min,
  double tight,
  double low,
  double base,
  double mid,
  double high,
  double wide,
  double loose,
  double max,
});

abstract class SilentMoonShape {
  const SilentMoonShape();
}

abstract class SilentMoonShapeRadius {
  const SilentMoonShapeRadius();
  static const double min = 0;
  static const double tight = 2;
  static const double low = 4;
  static const double base = 8;
  static const double mid = 12;
  static const double high = 16;
  static const double wide = 24;
  static const double loose = 32;
  static const double max = 999;
}
