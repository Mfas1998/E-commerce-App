
import 'package:flutter/material.dart';
import '../core/utils/app_colors.dart';

InkWell customButton({
  required String text,
   onPressed()?,
}) =>
    InkWell(
      onTap:onPressed ,
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.all(10),
          height: 50,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );

