
import 'package:flutter/material.dart';

AppBar customAppBar({required String title, IconData? icon}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(color: Colors.black),
    ),
    leading: InkWell(onTap: () {}, child: Icon(icon, color: Colors.black)),
    backgroundColor: Colors.white,
  );
}
