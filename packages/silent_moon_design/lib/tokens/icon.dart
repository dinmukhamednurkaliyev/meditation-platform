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

class SilentMoonIcon {
  const SilentMoonIcon._();

  static const facebook =
      'packages/silent_moon_core/assets/icons/facebook_icon.svg';

  static const google =
      'packages/silent_moon_core/assets/icons/google_icon.svg';

  static const logoDark =
      'packages/silent_moon_core/assets/icons/logo_dark.svg';

  static const logoLight =
      'packages/silent_moon_core/assets/icons/logo_light.svg';
}

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
