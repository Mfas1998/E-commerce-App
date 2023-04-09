import 'package:e_commerce/widgets/custome_Button.dart';
import 'package:e_commerce/widgets/custome_TextFormField.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/assets_manager.dart';
import '../widgets/custome_icons.dart';

class SearchResultThree extends StatefulWidget {
  const SearchResultThree({super.key});

  @override
  State<SearchResultThree> createState() => _SearchResultThreeState();
}

class _SearchResultThreeState extends State<SearchResultThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 50, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 250,
                child: CustomeTextFormField('Search Product'),
              ),
              Image.asset(ImgAssets.Shorticon),
              Image.asset(
                ImgAssets.Filter,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 1,
          color: AppColors.grayColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(right: 190),
                child: Text(
                  '0 Result',
                  style: TextStyle(color: AppColors.grayColor),
                )),
            Text(
              'Man Shoes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            custome_icon(
                icons: Icons.keyboard_arrow_down,
                color: AppColors.grayColor,
                size: 30)
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset(
                ImgAssets.Notfund,
                width: 72,
                height: 72,
              ),
            ),
            Text(
              'Product Not Found',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'thank you for shopping using lafyuu',
              style: TextStyle(
                  fontSize: 10, color: AppColors.grayColor, height: 2),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(30.1, 15.2),
                    primary:
                        AppColors.primaryColor, //background color of button
                    side: const BorderSide(
                        width: 0.1,
                        color: AppColors.grayColor), //border width and color
                    elevation: 1, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.only(
                        left: 130,
                        right: 130,
                        top: 25,
                        bottom: 22) //content padding inside button
                    ),
                onPressed: () {
                  //code to execute when this button is pressed.
                },
                child: Text('Back to Home'))
          ],
        )
      ]),
    ));
  }
}
