import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class ShortByPag extends StatelessWidget {
  const ShortByPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(icon: Icons.arrow_back_ios, title: 'Short By'),
      body: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              custme_text('Best Match'),
              custme_text('Time: ending soonest'),
              custme_text('Time: newly listed'),
              custme_text('Price + Shipping: lowest first'),
              custme_text('Price + Shipping: highest first'),
              custme_text('Distance: nearest first'),
            ],
          )),
    );
  }

  InkWell custme_text(String? title) {
    return InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          child: Text(
            '$title',
            style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold, height: 3),
          ),
        ));
  }
}
