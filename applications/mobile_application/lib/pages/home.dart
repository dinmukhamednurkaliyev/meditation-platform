import 'package:flutter/material.dart';
import 'package:shared/widgets/scaffold/widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SilentMoonScaffold.primary(
      context: context,
      body: const Column(),
    );
  }
}
