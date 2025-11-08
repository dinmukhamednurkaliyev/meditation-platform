typedef PaddingContext = ({PaddingSizeContext size});
typedef PaddingSizeContext = ({
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

abstract class SilentMoonPaddingSize {
  const SilentMoonPaddingSize();
  static const double min = 0;
  static const double tight = 4;
  static const double low = 8;
  static const double base = 12;
  static const double mid = 16;
  static const double high = 24;
  static const double wide = 32;
  static const double loose = 48;
  static const double max = 64;
}
