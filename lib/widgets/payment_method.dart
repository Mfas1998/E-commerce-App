import 'package:e_commerce/widgets/custome_size_box.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

InkWell payment_method({required String payment_name, IconData? icon}) =>
    InkWell(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.all(10),
          height: 40,
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.primaryColor,
              ),
              sizeBox(width: 20),
              Text(
                payment_name,
                style: const TextStyle(
                    color: AppColors.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
