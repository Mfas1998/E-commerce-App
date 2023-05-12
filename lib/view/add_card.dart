import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(title: "Add Card", icon: Icons.arrow_back_ios),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          custom_TextFormField(
              label: "Card Number", hintText: "Enter Card Number"),
          Row(
            children: [
              Expanded(
                  child: custom_TextFormField(
                      label: "Expiration", hintText: "Expiration Data")),
              Expanded(
                  child: custom_TextFormField(
                      label: "Security Code", hintText: "Security Code"))
            ],
          ),
          custom_TextFormField(label: "Card Holder", hintText: "Card Holder"),
          customButton(text: "Add Card")
        ],
      ),
    );
  }
}
