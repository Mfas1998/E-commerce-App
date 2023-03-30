import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/widgets/custom_appBar.dart';

import 'package:flutter/material.dart';

import '../widgets/custom_container.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Address", icon: Icons.arrow_back_ios),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            customContainer(
                name: "Mohammed",
                address:
                    "address address address address address address address address address address address address",
                phone: "967738151341"),
            customContainer(
                name: "Mohammed",
                address:
                    "address address address address address address address address address address address address",
                phone: "967738151341"),
            customContainer(
                name: "Mohammed",
                address:
                    "address address address address address address address address address address address address",
                phone: "967738151341"),
            customContainer(
                name: "Mohammed",
                address:
                    "address address address address address address address address address address address address",
                phone: "967738151341"),
            InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  child: const Center(
                    child: Text(
                      "Add Address",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
