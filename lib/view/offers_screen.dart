import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appBar.dart';
import '../widgets/custome_offer_banner.dart';
import '../widgets/custome_size_box.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppBar(title: 'Super Flash Sale', icon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 13),
        child: ListView(
          children: [
            offerBanner(
              title: 'Super Flash Sale',
              precentage: '50',
              num1: '0.8',
              num2: '34',
              num3: '52',
              imageUrl: 'assets/images/Promotion_image.png',
            ),
            sizeBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
