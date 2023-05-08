import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

InkWell customContainer(
    {required String name, required String address, String? phone}) {
  return InkWell(
    child: Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(address),
          const SizedBox(
            height: 10,
          ),
          Text(phone!),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                height: 45,
                onPressed: () {},
                color: AppColors.primaryColor,
                child: const Text(
                  "Edit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.delete_outlined,
                  size: 40,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
