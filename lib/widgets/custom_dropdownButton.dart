import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_strings.dart';

Container custom_dropdownButton({required String title}) => Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(border: Border.all(color: AppColors.grayColor)),
      child: DropdownButton(
        isExpanded: true,
        underline: const Divider(thickness: 0),
        hint: Text(
          title,
          style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        items: AppStrings.countries
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
            .toList(),
        onChanged: (value) {},
      ),
    );
