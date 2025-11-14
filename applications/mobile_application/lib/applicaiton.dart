import 'package:flutter/material.dart';
import 'package:mobile_application/onboarding.dart';
import 'package:shared/shared.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const title = 'Silent Moon';
    const home = OnboardingPage();
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
