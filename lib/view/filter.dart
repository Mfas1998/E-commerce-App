import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
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
    'Beagle',
    'Labrador',
    'Retriever',
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(icon: Icons.arrow_back_ios, title: 'Filter Search'),
      body: Column(
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                ],
              )),
          Container(
            child: Column(
              children: [
                Text(
                  'Condition',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ChipList(
                      listOfChipNames: _dogeNames,
                      supportsMultiSelect: true,
                      activeBgColorList: [
                        Colors.pink,
                        Colors.yellow,
                        Colors.green
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
                    ),

                    // Using [extraOnToggle]
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Using extraOnToggle: ${_dogeNames[_currentIndex]}'),
                    const SizedBox(
                      height: 10,
                    ),
                    ChipList(
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
                        Colors.pink,
                        Colors.yellow,
                        Colors.green
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
                    ),

                    // Using [shouldWrap]
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
