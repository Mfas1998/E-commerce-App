import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

Container custome_Container({IconData? icons, String? text, int? num}) {
  return Container(
    padding: const EdgeInsets.only(top: 30),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Icon(
        icons,
        color: Colors.blue,
        size: 30,
      ),
      Container(
          margin: const EdgeInsets.only(right: 200),
          child: Text(
            '$text',
            style: const TextStyle(
              fontSize: 18,
            ),
          )),
      Container(
        width: 22,
        height: 22,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          '$num',
          style: TextStyle(color: Colors.white),
        )),
      )
    ]),
  );
}

Container custome_Container2({
  IconData? icons,
  String? text = '',
  String? offer = '',
  String? date = '',
}) {
  return Container(
      // color: Colors.red,
      padding: const EdgeInsets.only(top: 30, right: 0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          icons,
          color: Colors.blue,
          size: 28,
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: 300,
              child: Text(
                '$text',
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 20,
                  wordSpacing: 0,
                  letterSpacing: -2,
                ),
              ),
            ),
            SizedBox(
                width: 300,
                child: Text(
                  '$offer',
                  style: TextStyle(color: AppColors.grayColor, height: 2),
                )),
            Text(
              '$date',
              style: TextStyle(letterSpacing: -1, height: 2),
            )
          ]),
        ),
      ]));
}

Container custome_Container_feed({
  String? images,
  String? text = '',
  String? offer = '',
  String? date = '',
}) {
  return Container(
      // color: Colors.red,
      padding: const EdgeInsets.only(top: 30, right: 0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          images.toString(),
          height: 48,
          width: 48,
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '$text',
              maxLines: 2,
              style: const TextStyle(
                fontSize: 20,
                wordSpacing: 0,
                letterSpacing: -2,
              ),
            ),
            SizedBox(
                width: 260,
                child: Text(
                  '$offer',
                  style: TextStyle(color: AppColors.grayColor, height: 2),
                )),
            Text(
              '$date',
              style: TextStyle(letterSpacing: -1, height: 2),
            )
          ]),
        ),
      ]));
}
