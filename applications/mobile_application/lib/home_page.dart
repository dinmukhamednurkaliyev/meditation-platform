import 'package:flutter/material.dart';
import 'package:silent_moon_core/silent_moon_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SilentMoonScaffold(
      body: Column(
        children: [
          Text('data'),
          SilentMoonTextField(
            hintText: 'Email',
          ),
          SilentMoonTextField(
            hintText: 'Password',
          ),
        ],
      ),
    );
  }
}
