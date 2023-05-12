import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custom_button.dart';


class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  var country = "USA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Edit Address", icon: Icons.arrow_back_ios),
      body: SingleChildScrollView(
        child: Column(
          children: [
            custom_TextFormField(label: 'Country or Region'),
            custom_TextFormField(label: 'First Name'),
            custom_TextFormField(label: 'Last Name'),
            custom_TextFormField(label: 'Street Address '),
            custom_TextFormField(label: 'Street Address 2 (Optional)'),
            custom_TextFormField(label: 'City'),
            custom_TextFormField(label: 'State/Province/Region'),
            custom_TextFormField(label: 'Zip Code'),
            custom_TextFormField(label: 'Phone number'),
            customButton(text: "Edit Address"),
          ],
        ),
      ),
    );
  }
}
