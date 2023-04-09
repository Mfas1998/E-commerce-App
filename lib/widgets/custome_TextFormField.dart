import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../view/search.dart';

class CustomeTextFormField extends StatefulWidget {
  String? texthelp;
  CustomeTextFormField(this.texthelp);

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        setState(() {
          selectsours = value;
        });
      },
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          labelText: "Search Product",
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 0.5,
            ),
          ),
          hintText: '${widget.texthelp}'),
    );
  }
}

String selectsours = "";
final souarslecet = TextEditingController();
List<String> souars = [
  "الفاتحة",
  "البقرة",
  "الاعمران",
  "النساء",
  "المائدة",
  "الانعام",
  "الاعراف",
  "الانفال",
  "التوبة",
  "يونس",
  "هود",
  "يوسف",
  "الرعد",
  "ابراهيم",
];
