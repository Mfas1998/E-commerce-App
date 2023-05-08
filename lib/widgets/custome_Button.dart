import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

ElevatedButton custome_Button({String? images}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        minimumSize: Size(30.1, 15.2),
        primary: AppColors.whiteColor, //background color of button
        side: const BorderSide(
            width: 0.1, color: AppColors.grayColor), //border width and color
        elevation: 1, //elevation of button
        shape: RoundedRectangleBorder(
            //to set border radius to button
            borderRadius: BorderRadius.circular(60)),
        padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 25,
            bottom: 22) //content padding inside button
        ),
    onPressed: () {
      //code to execute when this button is pressed.
    },
    child: Image.asset('$images'),
  );
}
