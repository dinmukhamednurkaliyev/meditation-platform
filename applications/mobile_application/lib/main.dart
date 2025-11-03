import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_application/applicaiton.dart';

void main() {
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(const Application());
    },
    (Object error, StackTrace stack) {
      if (kDebugMode) {
        print('Caught error in runZonedGuarded: $error');
        print(stack);
      }
      FlutterError.onError = (details) {
        FlutterError.presentError(
          details,
        );
      };
    },
  );
}
