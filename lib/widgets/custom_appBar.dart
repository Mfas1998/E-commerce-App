// import 'dart:js';

import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required String title, IconData? icon}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
          color: AppColors.textColor, fontWeight: FontWeight.bold),
    ),
    leading: IconButton(
        onPressed: () {}, icon: Icon(icon), color: AppColors.textColor),
    backgroundColor: AppColors.whiteColor,
  );
}
