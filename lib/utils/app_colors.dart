import 'package:flutter/material.dart';

///
/// Created by Sunil Kumar from Boiler plate
///
mixin AppColors {
  static const brightBackground = Color(0xfff8f8f8);
  static const darkBackground = Color(0xff3e3e3e);
  static const borderColor = Color(0xffcdcdcd);
  static const selectedTextColor = Color(0xff3F59C0);
  static const unSelectedTextColor = Color(0xff898989);
  static const containerPink = Color(0xffFFE4F7);
   static LinearGradient forwardScrollGradient(Color color1, Color color2){
    LinearGradient scrollGradient1 =
    LinearGradient(colors: [color1, color2],begin: Alignment.centerLeft,end: Alignment.centerRight);
    return scrollGradient1;
  }
  static LinearGradient backWardScrollGradient(Color color1, Color color2){
    LinearGradient scrollGradient2 =
    LinearGradient(colors: [color1, color2],begin: Alignment.centerLeft,end: Alignment.centerRight);
    return scrollGradient2;
  }
  static const boxColor = Color(0xffDADADA);
  static const boxColor2 = Color(0xffF4F4F4);

  static const MaterialColor brightPrimary =
      MaterialColor(brightPrimaryValue, <int, Color>{
    50: Color(0xFFE3E5EA),
    100: Color(0xFFBABDCA),
    200: Color(0xFF8C92A6),
    300: Color(0xFF5E6682),
    400: Color(0xFF3C4568),
    500: Color(brightPrimaryValue),
    600: Color(0xFF162046),
    700: Color(0xFF121B3D),
    800: Color(0xFF0E1634),
    900: Color(0xFF080D25),
  });
  static const int brightPrimaryValue = 0xFF19244D;
}
