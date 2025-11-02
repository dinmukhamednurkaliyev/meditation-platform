import 'package:flutter/material.dart';
import 'package:silent_moon_core/silent_moon_core.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: SilentMoonColor.primary.main,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: colorScheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: colorScheme,
      ),
      home: const Scaffold(
        body: Text('Hi'),
      ),
    );
  }
}
