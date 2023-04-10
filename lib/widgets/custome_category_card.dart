import 'package:flutter/material.dart';

import 'custome_size_box.dart';

Column categoryCard({required String title, required String iconUrl}) => Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffEBF0FF),
            ),
            // color: Color.fromARGB(255, 199, 193, 190),
            borderRadius: BorderRadius.circular(66),
          ),
          child: Image.asset(
            iconUrl,
          ),
        ),
        sizeBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: Color(0xff9098B1),
            letterSpacing: 0.5,
            height: 1.5,
          ),
        ),
      ],
    );
