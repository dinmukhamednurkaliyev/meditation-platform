class SilentMoonIcon {
  SilentMoonIcon();

  final social = _SocialIcons();

  final logo = _LogoIcons();

  final size = _IconSize();
}

class _IconSize {
  _IconSize();

  final double base = 24;
  final double high = 32;
  final double loose = 48;
  final double low = 20;
  final double max = 64;
  final double mid = 28;
  final double min = 12;
  final double tight = 16;
  final double wide = 40;
}

class _LogoIcons {
  _LogoIcons();

  final String dark = 'packages/silent_moon_core/assets/icons/logo_dark.svg';
  final String light = 'packages/silent_moon_core/assets/icons/logo_light.svg';
}

class _SocialIcons {
  _SocialIcons();

  final String facebook = 'packages/silent_moon_core/assets/icons/facebook_icon.svg';

  final String google = 'packages/silent_moon_core/assets/icons/google_icon.svg';
}
