import 'package:flutter/material.dart';
import 'package:get/get.dart';

Row sectionTitle({required String name, required String seeMore}) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          child: Text(
            seeMore,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff40BFFF),
            ),
          ),
        ),
      ],
    );
