import 'package:flutter/material.dart';

import 'custome_size_box.dart';

Container recomendedProduct({
  required String title,
  required String name,
  required String description,
}) =>
    Container(
      width: 343,
      height: 206,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/recomended_image.png')),
        // border: Border.all(color: Colors.grey, width: 0.1),
        // color: Color.fromARGB(255, 193, 173, 173),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${title}\n${name}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
                sizeBox(
                  height: 20,
                ),
                Text(
                  '${description}',
                  style: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
