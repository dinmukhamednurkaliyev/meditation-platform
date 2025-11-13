import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_application/applicaiton.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kDebugMode) {
      print('Flutter error: ${details.exception}');
    }
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(const Application());
    },
    (Object error, StackTrace stack) {
      if (kDebugMode) {
        print('Caught error in runZonedGuarded: $error');
        print(stack);
      }
    },
  );
}
