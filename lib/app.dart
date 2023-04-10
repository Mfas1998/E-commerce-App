import 'package:e_commerce/view/home_screen.dart';
import 'package:flutter/material.dart';

import 'view/offers_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OfferScreen(),
    );
  }
}