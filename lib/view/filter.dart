import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../widgets/custome_TextFormField.dart';

class FilterPag extends StatefulWidget {
  const FilterPag({super.key});

  @override
  State<FilterPag> createState() => _FilterPagState();
}

class _FilterPagState extends State<FilterPag> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          custome_appBar(icon: Icons.arrow_back_ios, title: 'Filter Search'),
      body: Column(
        children: [
          Container(
            color: AppColors.scundryColorTow,
            width: double.infinity,
            height: 1,
          ),
          ,
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
                              color: AppColors.scundryColorTow,
                              fontWeight: FontWeight.bold)),
                      Text('MAX',
                          style: TextStyle(
                              color: AppColors.scundryColorTow,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              )),
          Container(
            child: Column(
              children: [
                Spec
                Text(
                  'Condition',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )],
            ),
          )
        ],
      ),
    );
  }
}
