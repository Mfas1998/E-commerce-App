import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appBar.dart';
import '../widgets/custome_continer.dart';

class NotificationActivity extends StatefulWidget {
  const NotificationActivity({super.key});

  @override
  State<NotificationActivity> createState() => _NotificationActivityState();
}

class _NotificationActivityState extends State<NotificationActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Activity', icon: Icons.arrow_back_ios),
      body: Container(
        margin: EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custome_Container2(
                icons: Icons.close_fullscreen,
                text: 'Transaction Nike Air Zoom Product',
                offer:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM'),
            custome_Container2(
                icons: Icons.close_fullscreen,
                text: 'Transaction Nike Air Zoom Pegasus 36 Miami',
                offer:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
                date: 'April 30, 2014 1:01 PM'),
            custome_Container2(
                icons: Icons.close_fullscreen,
                text: 'Transaction Nike Air Max',
                offer:
                    'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
                date: 'April 30, 2014 1:01 PM'),
          ],
        ),
      ),
    );
  }
}
