import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

Container custom_TextFormField(
        {required String label, String? hintText, String? error}) =>
    Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
             
             
              validator: (text) {
                if (text!.isEmpty) {
                  return error;
                }
                return null;
              },
              decoration: InputDecoration(
                isDense: true,
                hintText: hintText,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.grayColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ));
