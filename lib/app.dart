import 'package:e_commerce/view/ShortBy.dart';
import 'package:flutter/material.dart';

import 'view/category.dart';
import 'view/filter.dart';
import 'view/search_result_three.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterPag(),
    );
  }
}
