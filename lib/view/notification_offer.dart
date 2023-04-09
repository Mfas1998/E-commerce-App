import 'package:flutter/material.dart';

import '../widgets/custom_appBar.dart';
import '../widgets/custome_continer.dart';

class NotificationOffer extends StatefulWidget {
  const NotificationOffer({super.key});

  @override
  State<NotificationOffer> createState() => _NotificationOfferState();
}

class _NotificationOfferState extends State<NotificationOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar( title: 'Notification',icon: Icons.arrow_back_ios ),
      body: Container(
        margin: EdgeInsets.only(left: 15),
        child: Column(
          children: [
            custome_Container2(
                icons: Icons.local_offer,
                text: 'The Best Title',
                offer:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM'),
            custome_Container2(
                icons: Icons.local_offer,
                text: 'SUMMER OFFER 98% Cashback',
                offer:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute',
                date: 'April 30, 2014 1:01 PM'),
            custome_Container2(
                icons: Icons.local_offer,
                text: 'Special Offer 25% OFF',
                offer:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM'),
          ],
        ),
      ),
    );
  }
}
