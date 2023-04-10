import 'package:e_commerce/view/add_address.dart';
import 'package:e_commerce/view/address.dart';
import 'package:e_commerce/view/explore.dart';
import 'package:e_commerce/view/home_screen.dart';
import 'package:e_commerce/view/notification%20_Feed.dart';
import 'package:e_commerce/view/notification.dart';
import 'package:e_commerce/view/notification_Activity.dart';
import 'package:e_commerce/view/search.dart';
// import 'package:e_commerce/view/delete_address_confirmation.dart';

import 'package:flutter/material.dart';

import 'view/search_result_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


