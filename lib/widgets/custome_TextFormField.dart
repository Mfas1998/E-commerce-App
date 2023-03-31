import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../view/search.dart';

class custome_head extends StatefulWidget {
  String? texthelp;
  custome_head(this.texthelp);

  @override
  State<custome_head> createState() => _custome_headState();
}

class _custome_headState extends State<custome_head> {
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
