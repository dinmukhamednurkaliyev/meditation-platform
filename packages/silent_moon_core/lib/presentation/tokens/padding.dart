import 'package:flutter/widgets.dart';

typedef PaddingContext = ({PaddingSizeContext size});
typedef PaddingSizeContext = ({
  EdgeInsets min,
  EdgeInsets tight,
  EdgeInsets low,
  EdgeInsets base,
  EdgeInsets mid,
  EdgeInsets high,
  EdgeInsets wide,
  EdgeInsets loose,
  EdgeInsets max,
});

abstract class SilentMoonPaddingSize {
  const SilentMoonPaddingSize();
  static const EdgeInsets min = EdgeInsets.zero;
  static const EdgeInsets tight = EdgeInsets.all(4);
  static const EdgeInsets low = EdgeInsets.all(8);
  static const EdgeInsets base = EdgeInsets.all(12);
  static const EdgeInsets mid = EdgeInsets.all(16);
  static const EdgeInsets high = EdgeInsets.all(24);
  static const EdgeInsets wide = EdgeInsets.all(32);
  static const EdgeInsets loose = EdgeInsets.all(48);
  static const EdgeInsets max = EdgeInsets.all(64);
}
