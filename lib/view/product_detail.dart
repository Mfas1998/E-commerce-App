import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';

import '../models/product_ data.dart';
import '../widgets/custome_page_view.dart';
import '../widgets/custome_product_card.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    double screenSize = 360; //610
    double screenWidth = MediaQuery.of(context).size.width / screenSize;
    double screenHeight = screenWidth * 0.97;
    //  final  List<ProductData> p = Get.log.a); // as Map<String, Sgtring>;
    // final name = p['title'];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Positioned(
              left: 0 * screenWidth,
              top: 122 * screenWidth,
              child: Container(
                width: 365 * screenWidth,
                height: 408 * screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 360 * screenWidth,
                      height: 238 * screenWidth,
                      child: Image.asset(
                        'assets/images/red_boots.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(6 * screenWidth,
                          6 * screenWidth, 8.96 * screenWidth, 0 * screenWidth),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(vertical: 16),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8 * screenWidth,
                                  height: 8 * screenWidth,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(4 * screenWidth),
                                    color: Color.fromARGB(255, 111, 106,
                                        255), //Color(0xffeaefff),
                                  ),
                                ),
                                SizedBox(
                                  width: 8 * screenWidth,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                8 * screenWidth),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      46.96 * screenWidth,
                                      0 * screenWidth),
                                  constraints: BoxConstraints(
                                    maxWidth: 275 * screenWidth,
                                  ),
                                  child: Text(
                                    'Nike Air Zoom Pegasus 36 Miami',
                                    style: TextStyle(
                                      fontSize: 20 * screenHeight,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5 * screenHeight / screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff223263),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      5.94 * screenWidth,
                                      0 * screenWidth,
                                      0 * screenWidth),
                                  width: 18.08 * screenWidth,
                                  height: 16.13 * screenWidth,
                                  child: Icon(
                                    Icons.favorite_outline_outlined,
                                    size: 18 * screenWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                16 * screenWidth),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 16 * screenWidth,
                                  height: 16 * screenWidth,
                                  child: Icon(
                                    Icons.star,
                                    size: 16 * screenWidth,
                                    color: Color(0xffFFC833),
                                  ),
                                ),
                                SizedBox(
                                  width: 4 * screenWidth,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '\$299,43',
                            style: TextStyle(
                              fontSize: 20 * screenHeight,
                              fontWeight: FontWeight.bold,
                              height: 1.5 * screenHeight / screenWidth,
                              letterSpacing: 0.5 * screenWidth,
                              color: Color(0xff40bfff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0 * screenWidth,
              top: 530 * screenWidth,
              child: Container(
                padding: EdgeInsets.fromLTRB(16 * screenWidth, 24 * screenWidth,
                    0 * screenWidth, 128 * screenWidth),
                width: 360 * screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * screenWidth,
                          0 * screenWidth, 0 * screenWidth, 24 * screenWidth),
                      width: 368 * screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                12 * screenWidth),
                            child: Text(
                              'Select Size',
                              style: TextStyle(
                                fontSize: 14 * screenHeight,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * screenHeight / screenWidth,
                                letterSpacing: 0.5 * screenWidth,
                                color: Color(0xff223263),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 48 * screenWidth,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48 * screenWidth,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffeaefff)),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.circular(66 * screenWidth),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '6',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14 * screenHeight,
                                        fontWeight: FontWeight.w700,
                                        height:
                                            1.5 * screenHeight / screenWidth,
                                        letterSpacing: 0.5 * screenWidth,
                                        color: Color(0xff223263),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16 * screenWidth,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * screenWidth,
                          0 * screenWidth, 0 * screenWidth, 24 * screenWidth),
                      width: 368 * screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                12 * screenWidth),
                            child: Text(
                              'Select Color',
                              style: TextStyle(
                                fontSize: 14 * screenHeight,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * screenHeight / screenWidth,
                                letterSpacing: 0.5 * screenWidth,
                                color: Color(0xff223263),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 48 * screenWidth,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      16 * screenWidth,
                                      16 * screenWidth,
                                      16 * screenWidth,
                                      16 * screenWidth),
                                  width: 48 * screenWidth,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffc733),
                                    borderRadius:
                                        BorderRadius.circular(66 * screenWidth),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 16 * screenWidth,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              66 * screenWidth),
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16 * screenWidth,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * screenWidth,
                          0 * screenWidth, 0 * screenWidth, 25 * screenWidth),
                      width: 343 * screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                12 * screenWidth),
                            child: Text(
                              'Specification',
                              style: TextStyle(
                                fontSize: 14 * screenHeight,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * screenHeight / screenWidth,
                                letterSpacing: 0.5 * screenWidth,
                                color: Color(0xff223263),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                38 * screenWidth),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      158 * screenWidth,
                                      0 * screenWidth),
                                  child: Text(
                                    'Shown:',
                                    style: TextStyle(
                                      fontSize: 12 * screenHeight,
                                      fontWeight: FontWeight.w400,
                                      height: 1.7999998728 *
                                          screenHeight /
                                          screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff223263),
                                    ),
                                  ),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 139 * screenWidth,
                                  ),
                                  child: Text(
                                    'Laser Blue/Anthracite/Watermelon/White',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 12 * screenHeight,
                                      fontWeight: FontWeight.w400,
                                      height: 1.7999998728 *
                                          screenHeight /
                                          screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff9098b1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                16 * screenWidth),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      233 * screenWidth,
                                      0 * screenWidth),
                                  child: Text(
                                    'Style:',
                                    style: TextStyle(
                                      fontSize: 12 * screenHeight,
                                      fontWeight: FontWeight.w400,
                                      height: 1.7999998728 *
                                          screenHeight /
                                          screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff223263),
                                    ),
                                  ),
                                ),
                                Text(
                                  'CD0113-400',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 12 * screenHeight,
                                    fontWeight: FontWeight.w400,
                                    height: 1.7999998728 *
                                        screenHeight /
                                        screenWidth,
                                    letterSpacing: 0.5 * screenWidth,
                                    color: Color(0xff9098b1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 330 * screenWidth,
                            ),
                            child: Text(
                              'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                              style: TextStyle(
                                fontSize: 12 * screenHeight,
                                fontWeight: FontWeight.w400,
                                height:
                                    1.7999998728 * screenHeight / screenWidth,
                                letterSpacing: 0.5 * screenWidth,
                                color: Color(0xff9098b1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0 * screenWidth,
                          0 * screenWidth, 0 * screenWidth, 23 * screenWidth),
                      width: 343 * screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                8 * screenWidth),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      154 * screenWidth,
                                      0 * screenWidth),
                                  child: Text(
                                    'Review Product',
                                    style: TextStyle(
                                      fontSize: 14 * screenHeight,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * screenHeight / screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff223263),
                                    ),
                                  ),
                                ),
                                Text(
                                  'See More',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 14 * screenHeight,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * screenHeight / screenWidth,
                                    letterSpacing: 0.5 * screenWidth,
                                    color: Color(0xff40bfff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                16 * screenWidth),
                            height: 16 * screenWidth,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      8 * screenWidth,
                                      0 * screenWidth),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 16 * screenWidth,
                                          height: 16 * screenWidth,
                                          child: Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Color(0xffFFC833),
                                          )),
                                      SizedBox(
                                        width: 4 * screenWidth,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      3 * screenWidth,
                                      0 * screenWidth),
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontSize: 10 * screenHeight,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * screenHeight / screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff9098b1),
                                    ),
                                  ),
                                ),
                                Text(
                                  '(5 Review)',
                                  style: TextStyle(
                                    fontSize: 10 * screenHeight,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * screenHeight / screenWidth,
                                    letterSpacing: 0.5 * screenWidth,
                                    color: Color(0xff9098b1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      166 * screenWidth,
                                      16 * screenWidth),
                                  width: double.infinity,
                                  height: 48 * screenWidth,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * screenWidth,
                                            0 * screenWidth,
                                            16 * screenWidth,
                                            0 * screenWidth),
                                        width: 48 * screenWidth,
                                        height: 48 * screenWidth,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              24 * screenWidth),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/ProfilePicture.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * screenWidth,
                                            3 * screenWidth,
                                            0 * screenWidth,
                                            4 * screenWidth),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * screenWidth,
                                                  0 * screenWidth,
                                                  0 * screenWidth,
                                                  4 * screenWidth),
                                              child: Text(
                                                'James Lawson',
                                                style: TextStyle(
                                                  fontSize: 14 * screenHeight,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5 *
                                                      screenHeight /
                                                      screenWidth,
                                                  letterSpacing:
                                                      0.5 * screenWidth,
                                                  color: Color(0xff223263),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: 16 * screenWidth,
                                                      height: 16 * screenWidth,
                                                      child: Icon(
                                                        Icons.star,
                                                        size: 16,
                                                        color:
                                                            Color(0xffFFC833),
                                                      )),
                                                  SizedBox(
                                                    width: 4 * screenWidth,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      18 * screenWidth),
                                  constraints: BoxConstraints(
                                    maxWidth: 344 * screenWidth,
                                  ),
                                  child: Text(
                                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                                    style: TextStyle(
                                      fontSize: 12 * screenHeight,
                                      fontWeight: FontWeight.w400,
                                      height: 1.7999998728 *
                                          screenHeight /
                                          screenWidth,
                                      letterSpacing: 0.5 * screenWidth,
                                      color: Color(0xff9098b1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      0 * screenWidth,
                                      16 * screenWidth),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 72 * screenWidth,
                                        height: 72 * screenWidth,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              8 * screenWidth),
                                          child: Image.asset(
                                            'assets/images/image1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12 * screenWidth,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'December 10, 2016',
                                  style: TextStyle(
                                    fontSize: 10 * screenHeight,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * screenHeight / screenWidth,
                                    letterSpacing: 0.5 * screenWidth,
                                    color: Color(0xff9098b1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 455 * screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * screenWidth),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * screenWidth,
                                0 * screenWidth,
                                0 * screenWidth,
                                12 * screenWidth),
                            child: Text(
                              'You Might Also Like',
                              style: TextStyle(
                                fontSize: 14 * screenHeight,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * screenHeight / screenWidth,
                                letterSpacing: 0.07 * screenWidth,
                                color: Color(0xff223263),
                              ),
                            ),
                          ),
                         productCard(
                            imageUrl:'assets/images/bag.png',
                            title: 'FS - QUILTED',
                            description: 'MAXI CROS...',
                            starIcon: false,
                            deleteIcon: false,
                            price: 534.33,
                            precentage: 24,
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 16 * screenWidth,
              top: 16 * screenWidth,
              child: Container(
                width: 343 * screenWidth,
                height: 57 * screenWidth,
                decoration: BoxDecoration(
                  color: Color(0xff40bfff),
                  borderRadius: BorderRadius.circular(5 * screenWidth),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3d40bfff),
                      offset: Offset(0 * screenWidth, 10 * screenWidth),
                      blurRadius: 15 * screenWidth,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Add To Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14 * screenHeight,
                      fontWeight: FontWeight.w700,
                      height: 1.7999999183 * screenHeight / screenWidth,
                      letterSpacing: 0.5 * screenWidth,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
  /*Container(
                            width: double.infinity,
                            height: 238 * screenWidth,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(5 * screenWidth),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      16 * screenWidth,
                                      16 * screenWidth,
                                      16 * screenWidth,
                                      16 * screenWidth),
                                  width: 141 * screenWidth,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffeaefff)),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.circular(5 * screenWidth),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 109 * screenWidth,
                                        height: 109 * screenWidth,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              5 * screenWidth),
                                          child: Image.asset(
                                            'assets/images/red_boots.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8 * screenWidth,
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * screenWidth,
                                            0 * screenWidth,
                                            2 * screenWidth,
                                            0 * screenWidth),
                                        constraints: BoxConstraints(
                                          maxWidth: 107 * screenWidth,
                                        ),
                                        child: Text(
                                          'FS - Nike Air Max 270 React...',
                                          style: TextStyle(
                                            fontSize: 12 * screenHeight,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 *
                                                screenHeight /
                                                screenWidth,
                                            letterSpacing: 0.5 * screenWidth,
                                            color: Color(0xff223263),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8 * screenWidth,
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * screenWidth,
                                            0 * screenWidth,
                                            57 * screenWidth,
                                            0 * screenWidth),
                                        child: Text(
                                          '\$299,43',
                                          style: TextStyle(
                                            fontSize: 12 * screenHeight,
                                            fontWeight: FontWeight.w700,
                                            height: 1.7999998728 *
                                                screenHeight /
                                                screenWidth,
                                            letterSpacing: 0.5 * screenWidth,
                                            color: Color(0xff40bfff),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8 * screenWidth,
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0 * screenWidth,
                                            0 * screenWidth,
                                            17 * screenWidth,
                                            0 * screenWidth),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * screenWidth,
                                                  0 * screenWidth,
                                                  8 * screenWidth,
                                                  0 * screenWidth),
                                              child: Text(
                                                '\$534,33',
                                                style: TextStyle(
                                                  fontSize: 10 * screenHeight,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5 *
                                                      screenHeight /
                                                      screenWidth,
                                                  letterSpacing:
                                                      0.5 * screenWidth,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Color(0xff9098b1),
                                                  decorationColor:
                                                      Color(0xff9098b1),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '24% Off',
                                              style: TextStyle(
                                                fontSize: 10 * screenHeight,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5 *
                                                    screenHeight /
                                                    screenWidth,
                                                letterSpacing:
                                                    0.5 * screenWidth,
                                                color: Color(0xfffb7181),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 16 * screenWidth,
                                ),
                              ],
                            ),
                          ),
                        */
                          
                         
*/