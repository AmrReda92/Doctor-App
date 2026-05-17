import 'package:doctor_app_advanced/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle font24Black = TextStyle(
    color: Color(0xff242424),
    fontSize: 24,
    fontWeight: FontWeight.w700
  );
  static TextStyle font32Blue = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold
  );
  static TextStyle font14Grey = TextStyle(
    color: AppColors.grey,
    fontSize: 14,
    fontWeight: FontWeight.normal
  );
  static TextStyle font16WhiteSemi = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600
  );
}