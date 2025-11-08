import 'package:flutter/material.dart';
import 'package:mobile_application/home_page.dart';
import 'package:silent_moon_design/silent_moon_design.dart';

class Applicaiton extends StatelessWidget {
  const Applicaiton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const title = 'Silent Moon';
    const home = HomePage();
    const debugShowCheckedModeBanner = false;
    final theme = SilentMoonTheme.light;
    final darkTheme = SilentMoonTheme.dark;
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      home: home,
      theme: theme,
      darkTheme: darkTheme,
    );
  }
}
