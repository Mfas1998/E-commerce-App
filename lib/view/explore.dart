import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/assets_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_Button.dart';
import '../widgets/custome_Text.dart';
import '../widgets/custome_TextFormField.dart';

class ExplorePag extends StatelessWidget {
  ExplorePag({super.key});
  ImgAssets ico = new ImgAssets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 250,
                child: CustomeTextFormField('Search Product'),
              ),
              Icon(
                Icons.favorite_border,
                size: 35,
                color: AppColors.grayColor,
                shadows: [Shadow(offset: Offset.zero)],
              ),
              Stack(children: [
                Icon(
                  Icons.notifications_none,
                  size: 35,
                  color: AppColors.grayColor,
                  shadows: [Shadow(offset: Offset.zero)],
                ),
                Container(
                  margin: EdgeInsets.only(left: 18, top: 5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                )
              ])
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 1,
          width: double.infinity,
          color: AppColors.grayColor,
        ),
        Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Man Fashion',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        custome_Button(images: ImgAssets.Skirt.toString()),
                        custome_Button(images: ImgAssets.Equipment.toString()),
                        custome_Button(images: ImgAssets.TShirt.toString()),
                        custome_Button(images: ImgAssets.Shoes.toString()),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    custome_Text('Man Shirt'),
                    SizedBox(
                        width: 70, child: custome_Text('Man Work Equipment')),
                    custome_Text('Man T-Shirt'),
                    custome_Text('Man Shoes')
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(children: [
                    custome_Button(images: ImgAssets.Pants.toString()),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: custome_Button(
                            images: ImgAssets.Underwear.toString())),
                  ]),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: custome_Text('Man Pants'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: custome_Text('Man Underwear'),
                    )
                  ],
                )
              ],
            )),
        Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Woman Fashion',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        custome_Button(images: ImgAssets.Dress.toString()),
                        custome_Button(
                            images: ImgAssets.WomanTShirt.toString()),
                        custome_Button(images: ImgAssets.WomanPants.toString()),
                        custome_Button(images: ImgAssets.Skirt.toString()),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    custome_Text('Dress'),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: custome_Text('Woman T-Shirt'),
                    ),
                    custome_Text('woman Pants'),
                    custome_Text('Skirt')
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(children: [
                    custome_Button(images: ImgAssets.WomanBag.toString()),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: custome_Button(
                            images: ImgAssets.Bikini.toString())),
                  ]),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: custome_Text('Woman Bag'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: custome_Text('bikini'),
                    )
                  ],
                )
              ],
            ))
      ]),
    );
  }
}
