import 'package:flutter/material.dart';

class SilentMoonColorScheme {
  const SilentMoonColorScheme({
    required this.main,
    required this.on,
    this.disabled,
    this.hover,
  });
  final Color main;
  final Color on;

  final Color? hover;
  final Color? disabled;
}

class SilentMoonSemanticColor {
  const SilentMoonSemanticColor();

  static const primary = SilentMoonColorScheme(
    main: Color(0xFF8E97FD),
    on: Color(0xFFF6F1FB),
  );

  static const secondary = SilentMoonColorScheme(
    main: Color(0xFF3F414E),
    on: Color(0xFFFEFFFE),
  );

  static const tertiary = SilentMoonColorScheme(
    main: Color(0xFFEBEAEC),
    on: Color(0xFF3F414E),
  );
}

class SilentMoonSocialMediaColors {
  SilentMoonSocialMediaColors._();

  static const facebook = SilentMoonColorScheme(
    main: Color(0xFF7583CA),
    on: Color(0xFFF6F1FB),
  );

  static const google = SilentMoonColorScheme(
    main: Color(0xFFEBEAEC),
    on: Color(0xFF3F414E),
  );
}
