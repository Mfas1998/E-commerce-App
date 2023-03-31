import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar newMethod(String title, IconData icon) {
  return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.textColor,
        ),
      ),
      leading: Icon(
        icon,
        color: AppColors.scundryColorTow,
      ),
      backgroundColor: AppColors.scundryColorOne);
}
