import 'package:flutter/material.dart';

Color withChangedHSV(Color color, {double h = 0, double s = 0, double v = 0}) {
  HSVColor hsvColor = HSVColor.fromColor(color);

  return hsvColor
      .withHue((hsvColor.hue + h) % 360)
      .withSaturation(hsvColor.saturation + s)
      .withValue(hsvColor.value + v)
      .toColor();
}
