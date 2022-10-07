import 'dart:math';
import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color bgAppTopColor = Color(0xFF002D97);
  static const Color bgAppBottomColor = Color(0xFF1D59F3);
  static const Color bgBottomNavBarColor = Color(0xFF002D97);
  static const Color selectedButtonColor = Color(0xFF24CFFF);
  static const Color unselectedButtonColor = Color(0x66FFFFFF);
  static const Color bgButtonColor = Color(0xFF164AC5);
  static const Color textCardCompanyColor = Color(0xFFA6BDF2);
  static const Color textCardColor = Color(0xFF71739A);
  static const Color cashbackOneColor = Color(0xFFF3DC09);
  static const Color cashbackTwoColor = Color(0xFF6600CC);
  static const Color cashbackTreeColor = Color(0xFFCC0074);
  static const Color cashbackFourColor = Color(0xFFFFAB02);
  static const Color bgCardColor = Color(0x26FFFFFF);
  static const Color textListColor = Color(0xFF4778EB);
  static Color randomColor = Color.fromRGBO(
      Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
}
