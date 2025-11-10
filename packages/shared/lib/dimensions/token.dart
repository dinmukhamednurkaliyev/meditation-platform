class SilentMoonDimension {
  SilentMoonDimension();

  final padding = _PaddingSize();

  final radius = _RadiusSize();

  final spacing = _SpacingSize();
}

class _PaddingSize {
  _PaddingSize();

  double get base => 12;
  double get high => 24;
  double get loose => 48;
  double get low => 8;
  double get max => 64;
  double get mid => 16;
  double get min => 0;
  double get tight => 4;
  double get wide => 32;
}

class _RadiusSize {
  _RadiusSize();

  double get base => 8;
  double get high => 16;
  double get loose => 32;
  double get low => 4;
  double get max => 999;
  double get mid => 12;
  double get min => 0;
  double get tight => 2;
  double get wide => 24;
}

class _SpacingSize {
  _SpacingSize();

  double get base => 12;
  double get high => 24;
  double get loose => 48;
  double get low => 8;
  double get max => 64;
  double get mid => 16;
  double get min => 0;
  double get tight => 4;
  double get wide => 32;
}
