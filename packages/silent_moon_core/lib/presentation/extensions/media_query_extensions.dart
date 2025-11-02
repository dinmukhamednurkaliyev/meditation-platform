import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef ScreenValues = ({Size size, double width, double height});

extension MediaExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ScreenValues get screen {
    final size = mediaQuery.size;

    return (size: size, width: size.width, height: size.height);
  }

  EdgeInsets get padding => mediaQuery.padding;

  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  bool get isKeyboardOpen => viewInsets.bottom > 0;
}
