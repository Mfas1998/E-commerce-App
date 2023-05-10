import 'package:e_commerce/view/add_address.dart';
import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            customButton(
              text: "Add Address",
              onPressed: () {
                Get.toNamed("/addAddress");
              },
            ),
          ],
        ),
      ),
    );
  }
}
