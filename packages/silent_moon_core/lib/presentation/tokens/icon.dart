typedef IconContext = ({IconSizeContext size});

typedef IconSizeContext = ({
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

abstract class SilentMoonIconSize {
  const SilentMoonIconSize();
  static const double min = 12;
  static const double tight = 16;
  static const double low = 20;
  static const double base = 24;
  static const double mid = 28;
  static const double high = 32;
  static const double wide = 40;
  static const double loose = 48;
  static const double max = 64;
}
