import 'package:flutter/material.dart';
import '../widgets/custome_appBar.dart';
import '../widgets/custome_continer.dart';

class Notifica extends StatefulWidget {
  const Notifica({super.key});

  @override
  State<Notifica> createState() => _NotificaState();
}

class _NotificaState extends State<Notifica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod('Notification', Icons.arrow_back_ios),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  custome_Container(
                    icons: Icons.local_offer,
                    text: 'Offer',
                    num: 2,
                  ),
                  custome_Container(icons: Icons.article, text: 'Feed', num: 3),
                  custome_Container(
                      icons: Icons.notifications, text: '   Acivity', num: 3),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
