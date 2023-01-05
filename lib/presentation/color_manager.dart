import 'package:flutter/material.dart';

class ColorManager {
  static const Color primaryColor = Color(0xFFED9728);
  // We will use 1 opacity color with extended color
  static final Color primaryColorOpacity = HexColor.fromHex('#B3ED9728');
  static const Color darkGrey = Color(0xFF525252);
  static const Color grey = Color(0xFF737477);
  static const Color lightGrey = Color(0xFF9E9E9E);

  static const Color grey1 = Color(0xFF707070);
  static const Color grey2 = Color(0xFF797979);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFE61F34);
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    if (hexCode.length == 6) {
      return Color(int.parse('FF$hexCode', radix: 16));
    } else if (hexCode.length == 8) {
      return Color(int.parse(hexCode, radix: 16));
    }
    return Colors.black;
  }
}
