import 'dart:ui';

import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

Container custome_Text(String? text) {
  return Container(
      margin: EdgeInsets.only(
        left: 2,
        top: 15,
      ),
      child: SizedBox(
          child: Text(
        '$text',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 13, color: AppColors.grayColor),
      )));
}
