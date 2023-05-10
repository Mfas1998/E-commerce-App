import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:e_commerce/widgets/custome_size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:chip_list/chip_list.dart';
import '../widgets/custome_TextFormField.dart';

class FilterPag extends StatefulWidget {
  FilterPag({super.key});

  @override
  State<FilterPag> createState() => _FilterPagState();
}

class _FilterPagState extends State<FilterPag> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  final List<String> _dogeNames = [
    'New',
    'Used',
    'Not specifled',
  ];
  final List<String> _format = [
    'All listings',
    'AcceptsOffers',
    'Auction',
    'Buy It Now',
    'Classified Adss',
  ];
  final List<String> _locations = [
    'Us only',
    'North America',
    'Europe',
    'Asia',
  ];
  final List<String> _show = [
    'Free Return',
    'Return Accepted',
    'Authrized Seller',
    'completed item',
    'Sold item',
    'Deals & Savings',
    'sal item',
    'listed as lats',
    'search in Description',
    'benefits chrety',
    'authenticity Verified',
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(icon: Icons.close, title: 'Filter Search'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.grayColor,
              width: double.infinity,
              height: 1,
            ),
            Container(
                margin: EdgeInsets.only(top: 20, left: 15, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price Range',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width: 150, child: CustomeTextFormField('')),
                        SizedBox(width: 150, child: CustomeTextFormField('')),
                      ],
                    ),
                    SfRangeSlider(
                      activeColor: Color(0xff40BFFF),
                      min: 0.0,
                      max: 100.0,
                      values: _values,
                      interval: 30,
                      showTicks: false,
                      showLabels: false,
                      enableTooltip: true,
                      minorTicksPerInterval: 1,
                      onChanged: (SfRangeValues values) {
                        setState(() {
                          _values = values;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('MIN',
                            style: TextStyle(
                                color: AppColors.grayColor,
                                fontWeight: FontWeight.bold)),
                        Text('MAX',
                            style: TextStyle(
                                color: AppColors.grayColor,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    sizeBox(height: 20)
                  ],
                )),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Condition',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      ChipList(
                        listOfChipNames: _dogeNames,
                        supportsMultiSelect: true,
                        inactiveBorderColorList: [Color(0xffEBF0FF)],
                        activeBorderColorList: [Color(0xffEBF0FF)],
                        activeBgColorList: [
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                        ],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.blue],
                        inactiveTextColorList: [AppColors.grayColor],
                        listOfChipIndicesCurrentlySeclected: [0],
                        padding: EdgeInsets.only(
                            top: 15, left: 10, bottom: 15, right: 10),
                        borderRadiiList: [10],
                      ),
                      Text(
                        'Buying Format',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      ChipList(
                        shouldWrap: true,
                        listOfChipNames: _format,
                        supportsMultiSelect: true,
                        inactiveBorderColorList: [Color(0xffEBF0FF)],
                        activeBorderColorList: [Color(0xffEBF0FF)],
                        activeBgColorList: [
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                        ],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.blue],
                        inactiveTextColorList: [AppColors.grayColor],
                        listOfChipIndicesCurrentlySeclected: [
                          _currentIndex = 0
                        ],
                        padding: EdgeInsets.only(
                            top: 30, left: 10, bottom: 15, right: 10),
                        borderRadiiList: [10],
                      ),

                      // Using [extraOnToggle]
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Item Location',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      ChipList(
                        padding: EdgeInsets.only(
                            top: 15, left: 10, bottom: 15, right: 10),
                        shouldWrap: true,
                        listOfChipNames: _locations,
                        supportsMultiSelect: true,
                        inactiveBorderColorList: [Color(0xffEBF0FF)],
                        activeBorderColorList: [Color(0xffEBF0FF)],
                        activeBgColorList: [
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                        ],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.blue],
                        inactiveTextColorList: [AppColors.grayColor],
                        listOfChipIndicesCurrentlySeclected: [0],
                        borderRadiiList: [10],
                      ),
                      Text(
                        'Show only',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      ChipList(
                        shouldWrap: true,

                        padding: EdgeInsets.only(
                            top: 15, left: 10, bottom: 15, right: 10),
                        // shouldWrap: true,
                        listOfChipNames: _show,
                        supportsMultiSelect: true,
                        inactiveBorderColorList: [Color(0xffEBF0FF)],
                        activeBorderColorList: [Color(0xffEBF0FF)],
                        activeBgColorList: [
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          Color(0xffECF9FF),
                          // Color(0xffECF9FF),
                        ],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.blue],
                        inactiveTextColorList: [AppColors.grayColor],
                        listOfChipIndicesCurrentlySeclected: [0],
                        borderRadiiList: [10],
                      ),

                      /* ChipList(
                        listOfChipNames: _dogeNames,
                        activeBgColorList: [Theme.of(context).primaryColor],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.white],
                        inactiveTextColorList: [Theme.of(context).primaryColor],
                        listOfChipIndicesCurrentlySeclected: [_currentIndex],
                        supportsMultiSelect: false,
                        extraOnToggle: (val) {
                          _currentIndex = val;
                          setState(() {});
                        },
                      ),
                      ChipList(
                        listOfChipNames: _dogeNames,
                        supportsMultiSelect: true,
                        activeBgColorList: [
                          Colors.blue,
                          Colors.blue,
                          Colors.blue
                        ],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.white],
                        inactiveTextColorList: [Theme.of(context).primaryColor],
                        listOfChipIndicesCurrentlySeclected: [0],
                        /* borderColorList: [
                          Colors.pink,
                          Colors.yellow,
                          Colors.green
                        ],*/
                      ),*/

                      // Using [shouldWrap]
                      sizeBox(height: 15),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.blue,
                              minimumSize: Size(30.1, 15.2),
                              primary: AppColors
                                  .primaryColor, //background color of button
                              side: const BorderSide(
                                  width: 0.1,
                                  color: AppColors
                                      .primaryColor), //border width and color
                              elevation: 10,
                              //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.only(
                                  left: 150,
                                  right: 150,
                                  top: 20,
                                  bottom: 20) //content padding inside button
                              ),
                          onPressed: () {
                            //code to execute when this button is pressed.
                          },
                          child: Text('Apply')),
                      sizeBox(height: 30)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
