class SilentMoonIcon {
  SilentMoonIcon();

  final social = _SocialIcons();

  final logo = _LogoIcons();

  final size = _IconSize();
}

class _IconSize {
  _IconSize();

  double get base => 24;
  double get high => 32;
  double get loose => 48;
  double get low => 20;
  double get max => 64;
  double get mid => 28;
  double get min => 12;
  double get tight => 16;
  double get wide => 40;
}

class _LogoIcons {
  _LogoIcons();

  String get dark => 'packages/silent_moon_core/assets/icons/logo_dark.svg';
  String get light => 'packages/silent_moon_core/assets/icons/logo_light.svg';
}

class _SocialIcons {
  _SocialIcons();

  String get facebook =>
      'packages/silent_moon_core/assets/icons/facebook_icon.svg';

  String get google => 'packages/silent_moon_core/assets/icons/google_icon.svg';
}
