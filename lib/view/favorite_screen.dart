import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

import '../models/product_ data.dart';
import '../widgets/custome_product_card.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppBar(title: 'Favorite Product', icon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 13),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GridView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: flashSale
                    .map(
                      (e) => productCard(
                        imageUrl: e.imageUrl,
                        title: e.title,
                        description: e.description,
                        starIcon: true,
                        deleteIcon: true,
                        price: e.price,
                        precentage: e.precentage,
                      ),
                    )
                    .toList(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 2 / 3.2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 12,
                ),

                // scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
