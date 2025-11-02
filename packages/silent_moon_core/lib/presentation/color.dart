import 'package:flutter/material.dart';

enum SilentMoonColor {
  primary(main: Color(0xFF8E97FD), on: Color(0xFFF6F1FB)),
  secondary(main: Color(0xFF3F414E), on: Color(0xFFFEFFFE)),
  tertiary(main: Color(0xFFEBEAEC), on: Color(0xFF3F414E)),
  ;

  const SilentMoonColor({required this.main, required this.on});
  final Color main;
  final Color on;
}
