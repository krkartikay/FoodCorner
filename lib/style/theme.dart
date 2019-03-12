import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();
  
  static const Color lightColor = const Color(0xFFFFFFFF);
  static const Color darkColor = const Color(0xFF00171F); // #121217
  static const Color accentColor = const Color(0xFF8A4FFF);
  static const Color primaryColor = const Color(0xFF00A8E8);
  static const Color primaryColorDarker = const Color(0xFF003459);
  static const Color loginGradientStart = primaryColor;
  static const Color loginGradientEnd = primaryColorDarker;

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const primaryGradientDark = const LinearGradient(
    colors: const [primaryColor, primaryColor],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}