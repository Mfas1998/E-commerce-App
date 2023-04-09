import 'package:e_commerce/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appBar.dart';

class CategoryPag extends StatefulWidget {
  const CategoryPag({super.key});

  @override
  State<CategoryPag> createState() => _CategoryPagState();
}

class _CategoryPagState extends State<CategoryPag> {
  Color colors = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(icon: Icons.arrow_back_ios, title: 'Category'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            custom_Row(images: ImgAssets.manshirt, title: 'Shirt'),
            custom_Row(images: ImgAssets.Bikini, title: 'Bikini'),
            custom_Row(images: ImgAssets.Dress, title: 'Dress'),
            custom_Row(images: ImgAssets.Equipment, title: 'Work Equipment'),
            custom_Row(images: ImgAssets.Pants, title: 'Man Pants'),
            custom_Row(images: ImgAssets.manShirt, title: 'Man Shoes'),
            custom_Row(images: ImgAssets.Underwear, title: 'Man Underwear'),
            custom_Row(images: ImgAssets.TShirt, title: 'Man T-Shirt'),
            custom_Row(images: ImgAssets.WomanBag, title: 'Woman Bag'),
            custom_Row(images: ImgAssets.WomanPants, title: 'Woman Pants '),
            custom_Row(images: ImgAssets.womanshoes, title: 'High Heels '),
            custom_Row(images: ImgAssets.WomanTShirt, title: 'Woman T-Shirt '),
            custom_Row(images: ImgAssets.Skirt, title: 'Skirt '),
          ],
        ),
      ),
    );
  }

  InkWell custom_Row({
    String? images,
    String? title,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          colors = colors;
        });
      },
      focusColor: colors,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Image.asset(
              '$images',
              height: 24,
              width: 24,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$title',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
