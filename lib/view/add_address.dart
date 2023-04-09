import 'package:flutter/material.dart';

import '../widgets/custom_TextFormField.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custom_button.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Add Address", icon: Icons.arrow_back_ios),
      body: SingleChildScrollView(
        child: Column(
          children: [
            custom_TextFormField(label: 'Country or region'),
            custom_TextFormField(label: 'First Name'),
            custom_TextFormField(label: 'Last Name'),
            custom_TextFormField(label: 'Street Address '),
            custom_TextFormField(label: 'Street Address 2 (Optional)'),
            custom_TextFormField(label: 'City'),
            custom_TextFormField(label: 'State/Province/Region'),
            custom_TextFormField(label: 'Zip Code'),
            custom_TextFormField(label: 'Phone number'),
            customButton(text: "Add Address"),
          ],
        ),
      ),
    );
  }
}