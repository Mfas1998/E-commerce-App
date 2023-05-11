import 'package:e_commerce/view/add_address.dart';
import 'package:e_commerce/view/add_card.dart';
import 'package:e_commerce/view/favorite_screen.dart';
import 'package:e_commerce/view/filter.dart';
import 'package:e_commerce/view/home_layout.dart';
import 'package:e_commerce/view/home_screen.dart';
import 'package:e_commerce/view/payments.dart';
import 'package:e_commerce/view/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/ShortBy.dart';
import 'view/category.dart';
import 'view/explore.dart';
import 'view/notification _Feed.dart';
import 'view/notification_Activity.dart';
import 'view/notification_offer.dart';
import 'view/offers_screen.dart';
import 'view/search.dart';
import 'view/search_result.dart';
import 'view/search_result_three.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
      getPages: [
        GetPage(name: "/notificationOffer", page: (() => NotificationOffer())),
        GetPage(name: "/notificationOfeed", page: (() => NotificationFeed())),
        GetPage(name: "/Notificationactivity", page: (() => NotificationActivity())),
        GetPage(name: "/Explorepag", page: (() => ExplorePag())),
        GetPage(name: "/addAddress", page: (() => AddAddress())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
        GetPage(name: "/pagName", page: (() => NotificationOffer())),
      ],
      /* routes: {
        "notificationOffer": (context) => NotificationOffer(),
        "notificationOfeed": (context) => NotificationFeed(),
        "Notificationactivity": (context) => NotificationActivity(),
      },*/
    );
  }
}
