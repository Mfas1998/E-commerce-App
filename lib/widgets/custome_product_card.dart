import 'package:flutter/material.dart';

import 'custome_size_box.dart';

Container productCard(
    {required String imageUrl,
    required String title,
    required String description,
    required bool starIcon,
    required bool deleteIcon,
    required double price,
    required double precentage}) {
  String newPrice = (price - (price * (precentage / 100))).toStringAsFixed(2);
  return Container(
    width: 141,
    height: 238,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xffEBF0FF),
      ),
      // color: Color.fromARGB(255, 224, 158, 111),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 133,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          sizeBox(
            height: 8,
          ),
          Text(
            '${title}\n${description}',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff223263),
              letterSpacing: 0.5,
              height: 1.6,
            ),
          ),
          if (starIcon)
            Row(
              children: List.generate(
                  5,
                  (index) => Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                        child: Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xffFFC833),
                        ),
                      )),
            ),
          sizeBox(
            height: 8,
          ),
          Text(
            '\$${newPrice}',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color(0xff40BFFF),
              letterSpacing: 0.5,
              height: 1.5,
            ),
          ),
          sizeBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '\$${price}',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  // decoration: TextDirection(),
                  fontSize: 10,
                  color: Color(0xff9098B1),
                  letterSpacing: 0.5,
                  height: 1.5,
                ),
              ),
              sizeBox(
                width: 8,
              ),
              Text(
                '${precentage}% Off',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFB7181),
                  letterSpacing: 0.5,
                  height: 1.5,
                ),
              ),
              if (deleteIcon)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.delete_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
            ],
          ),
        ],
      ),
    ),
  );
}
