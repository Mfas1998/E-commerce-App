import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

AppBar custome_appBar({required String title, IconData? icon}) {
  return AppBar(
      actions: [Padding(padding: EdgeInsets.all(10))],
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.textColor,
        ),
      ),
      leading: InkWell(
        onTap: () {},
        child: Icon(
          icon,
          color: AppColors.scundryColorTow,
        ),
      ),
      backgroundColor: AppColors.scundryColorOne);
}
