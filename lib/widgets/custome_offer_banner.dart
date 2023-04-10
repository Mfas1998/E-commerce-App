import 'package:flutter/material.dart';

import 'custome_size_box.dart';

Container offerBanner(
        {required String title,
        required String precentage,
        required String num1,
        required String num2,
        required String num3,
        required String imageUrl}) =>
    Container(
      width: 343,
      height: 206,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageUrl)),
        // border: Border.all(color: Colors.grey, width: 0.1),
        // color: Color.fromARGB(255, 193, 173, 173),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${title}\n${precentage}% off',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
                sizeBox(
                  height: 30,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 42,
                      height: 41,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 0.1),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '${num1}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    sizeBox(
                      width: 4,
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    sizeBox(
                      width: 4,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 42,
                      height: 41,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 0.1),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '${num2}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    sizeBox(
                      width: 4,
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    sizeBox(
                      width: 4,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 42,
                      height: 41,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 0.1),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '${num3}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
