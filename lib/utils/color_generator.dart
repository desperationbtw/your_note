import 'dart:math';

import 'package:flutter/painting.dart';

abstract class ColorGenerator {
  static Color pastel() {
    final random = Random();
    return HSLColor.fromAHSL(
      1,
      360 * random.nextDouble(),
      0.25 + 0.7 * random.nextDouble(),
      0.85 + 0.1 * random.nextDouble(),
    ).toColor();
  }
}
