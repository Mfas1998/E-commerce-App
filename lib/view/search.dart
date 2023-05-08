import 'dart:ffi';

// import 'package:dropdownfield2/dropdownfield2.dart';

import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_TextFormField.dart';
import '../widgets/custome_icons.dart';

class Searchpag extends StatefulWidget {
  Searchpag({super.key});

  @override
  State<Searchpag> createState() => _SearchpagState();
}

class _SearchpagState extends State<Searchpag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
      /* Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          child: Row(
            children: [
              SizedBox(
                  width: 250,
                  height: 50,
                  child: CustomeTextFormField('Nike Air Max')),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: custome_icon(icons: Icons.h_mobiledata),
              ),
            ],
          ))*/
    );
  }
}

class DataSearch extends SearchDelegate {
  List name = [
    "ahmed",
    "wael",
    "mohammed",
    "aymen",
    "aborafat",
    "refat",
    "ali"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.back_hand))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    //نتيجه البحث
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filternames = name
        .where((element) => element.container(query))
        .toList(); //اما اذا اردنا ان تضهر جميع الاسماء التي تحتوي على الحرف المدخل نستخدم contains
    return ListView.builder(
      itemCount: query == "" ? name.length : filternames.length,
      itemBuilder: (BuildContext context, i) {
        return InkWell(
          child: Container(
              padding: const EdgeInsets.all(20),
              color: AppColors.whiteColor,
              child:
                  query == "" ? Text("${name[i]}") : Text("${filternames[i]}")),
        );
      },
    );
  }
}
