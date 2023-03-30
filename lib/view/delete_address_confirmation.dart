import 'package:e_commerce/core/utils/app_colors.dart';
import "package:flutter/material.dart";

class DeleteAddressConfirmation extends StatefulWidget {
  const DeleteAddressConfirmation({super.key});

  @override
  State<DeleteAddressConfirmation> createState() =>
      _DeleteAddressConfirmationState();
}

class _DeleteAddressConfirmationState extends State<DeleteAddressConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(
          Icons.info,
          color: Color(0xffFB7181),
          size: 70,
        ),
        const Text(
          "Confirmation",
          style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 7, 26, 58),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        const Center(
          child: Text(
            "Are you sure wanna delete address",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColor,
          ),
          margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: MaterialButton(
              onPressed: () {},
              textColor: Colors.white,
              minWidth: double.infinity,
              height: 50,
              child: const Text("Delete")),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1)),
          margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: MaterialButton(
              onPressed: () {},
              textColor: Colors.white,
              minWidth: double.infinity,
              height: 50,
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.grey),
              )),
        ),
      ]),
    );
  }
}
