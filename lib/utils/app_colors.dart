import 'dart:ui';

import 'package:flutter/cupertino.dart';
class AppColors{
  static const themeColor = Color(0xff0CAD80);
  static const whiteColor = Color(0xffffffff);
  static const b1 = Color(0xff333333);
  static const b5 = Color(0xffCECECE);
  static const red = Color(0xffFF0B0B);
  static const yellow = Color(0xffFF9900);
  static const blue = Color(0xff0094FF);
  static const violate = Color(0xff8000FF);
  static const majenda = Color(0xffFF00B8);
  static const blueSky = Color(0xff00E0FF);
  static const rainBo = Color(0xffe81416);
  static const b2 = Color(0xff5A5A5A);
  static const LinearGradient myGradient = const LinearGradient(
    colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
    stops: [0.0, 1.0], // Color stops, where 0.0 is the beginning and 1.0 is the end
    begin: Alignment.topLeft, // Start the gradient from the top-left corner
    end: Alignment.bottomRight, // End the gradient at the bottom-right corner
  );

}