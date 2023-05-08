import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custome_continer.dart';

class NotificationPag extends StatefulWidget {
  const NotificationPag({super.key});

  @override
  State<NotificationPag> createState() => _NotificationPagState();
}

class _NotificationPagState extends State<NotificationPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Notification', icon: Icons.arrow_back_ios),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed("/notificationOffer");
                    },
                    child: custome_Container(
                      icons: Icons.local_offer,
                      text: 'Offer',
                      num: 2,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Get.toNamed("/notificationOfeed");
                      },
                      child: custome_Container(
                          icons: Icons.article, text: 'Feed', num: 3)),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/Notificationactivity");
                    },
                    child: custome_Container(
                        icons: Icons.notifications, text: '  Acivity', num: 3),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
