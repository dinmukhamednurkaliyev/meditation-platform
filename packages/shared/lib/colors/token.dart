import 'package:flutter/material.dart';

class SilentMoonColor {
  SilentMoonColor();

  final semantic = _SemanticColors();

  final social = _SocialMediaColors();
}

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

class _SemanticColors {
  _SemanticColors();

  SilentMoonColorScheme get input => const SilentMoonColorScheme(
    main: Color(0xFFF2F3F7),
    on: Color(0xFFA1A4B2),
  );

  SilentMoonColorScheme get primary => const SilentMoonColorScheme(
    main: Color(0xFF8E97FD),
    on: Color(0xFFF6F1FB),
  );

  SilentMoonColorScheme get secondary => const SilentMoonColorScheme(
    main: Color(0xFF3F414E),
    on: Color(0xFFFEFFFE),
  );
  SilentMoonColorScheme get tertiary => const SilentMoonColorScheme(
    main: Color(0xFFEBEAEC),
    on: Color(0xFF3F414E),
  );
}

class _SocialMediaColors {
  _SocialMediaColors();

  SilentMoonColorScheme get facebook => const SilentMoonColorScheme(
    main: Color(0xFF7583CA),
    on: Color(0xFFF6F1FB),
  );

  SilentMoonColorScheme get google => const SilentMoonColorScheme(
    main: Color(0xFFFFFFFF),
    on: Color(0xFF3F414E),
  );
}
