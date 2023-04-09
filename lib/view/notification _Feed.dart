


import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';
import '../widgets/custom_appBar.dart';
import '../widgets/custome_continer.dart';

class NotificationFeed extends StatefulWidget {
  const NotificationFeed({super.key});

  @override
  State<NotificationFeed> createState() => _NotificationFeedState();
}

class _NotificationFeedState extends State<NotificationFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Feed",icon: Icons.arrow_back_ios),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          custome_Container_feed(
              images: ImgAssets.prodact,
              text: 'New Product',
              offer:
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
              date: 'April 30, 2014 1:01 PM'),
          custome_Container_feed(
              images: ImgAssets.prodact,
              text: 'Best Product',
              offer:
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
              date: 'April 30, 2014 1:01 PM'),
          custome_Container_feed(
              images: ImgAssets.prodact,
              text: 'New Product',
              offer:
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
              date: 'April 30, 2014 1:01 PM'),
        ],
      ),
    );
  }
}
