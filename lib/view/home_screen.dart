import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/category_data.dart';
import '../models/product_ data.dart';
import '../widgets/custome_category_card.dart';
import '../widgets/custome_page_view.dart';
import '../widgets/custome_product_card.dart';
import '../widgets/custome_recomended_product.dart';
import '../widgets/custome_sections.dart';
import '../widgets/custome_size_box.dart';
import 'favorite_screen.dart';
import 'notification.dart';
import 'product_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 13),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffEBF0FF), width: 2),
                    // color: Color.fromARGB(255, 193, 173, 173),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  // color: Color.fromARGB(255, 35, 29, 29),
                  width: 253,
                  height: 46,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 20,
                        color: Color(0xff40BFFF),
                      ),
                      hintText: 'search',
                      // border: bor
                    ),
                  ),
                ),
                InkWell(
                    onTap: (() => Get.to(FavoriteScreen())),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xff9098B1),
                    )), // ),
                Badge(
                  badgeContent: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 10
                    ),
                  ),
                  child: InkWell(
                    onTap: (() => Get.to(NotificationPag())),
                    child: Icon(
                      Icons.notification_add_outlined,
                      color: Color(0xff9098B1),
                    ),
                  ),
                ),
                sizeBox(
                  width: 1,
                ),
                // Icon(Icons.favorite),
              ],
            ),
            sizeBox(
              height: 20,
            ),
            CustomePageView(
              title: 'Super Flash Sale',
              precentage: '50',
              num1: '0.8',
              num2: '34',
              num3: '52',
              imageUrl: 'assets/images/Promotion_image.png',
            ),
            sizeBox(
              height: 20,
            ),
            sectionTitle(name: 'Category', seeMore: 'More Category'),
            sizeBox(
              height: 12,
            ),
            Container(
              height: 120,
              child: ListView(
                children: categoryData
                    .map(
                      (e) => InkWell(
                        onTap: (() => Get.to(
                              ProductDetail(),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child:
                              categoryCard(title: e.title, iconUrl: e.iconUrl),
                        ),
                      ),
                    )
                    .toList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            sizeBox(
              height: 24,
            ),
            sectionTitle(name: 'Flash Sale', seeMore: 'See More'),
            sizeBox(
              height: 24,
            ),
            Container(
              height: 238,
              child: ListView(
                children: flashSale
                    .map(
                      (e) => InkWell(
                        onTap: (() => Get.to(
                              ProductDetail(),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: productCard(
                            imageUrl: e.imageUrl,
                            title: e.title,
                            description: e.description,
                            starIcon: false,
                            deleteIcon: false,
                            price: e.price,
                            precentage: e.precentage,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            sizeBox(height: 24),
            sectionTitle(name: 'Mega Sale', seeMore: 'See More'),
            sizeBox(
              height: 24,
            ),
            Container(
              height: 238,
              child: ListView(
                children: megaSale
                    .map(
                      (e) => InkWell(
                        onTap: (() => Get.to(
                              ProductDetail(),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: productCard(
                            imageUrl: e.imageUrl,
                            title: e.title,
                            description: e.description,
                            starIcon: false,
                            deleteIcon: false,
                            price: e.price,
                            precentage: e.precentage,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            sizeBox(
              height: 24,
            ),
            recomendedProduct(
                title: 'Recomended ',
                name: 'Product',
                description: 'We recommend the best for you'),
            sizeBox(
              height: 24,
            ),
            GridView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: flashSale
                  .map(
                    (e) => InkWell(
                      onTap: (() => Get.to(
                            ProductDetail(),
                          )),
                      child: productCard(
                        imageUrl: e.imageUrl,
                        title: e.title,
                        description: e.description,
                        starIcon: true,
                        deleteIcon: false,
                        price: e.price,
                        precentage: e.precentage,
                      ),
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
            sizeBox(
              height: 24,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}






/*
 Container(
              width: 385,
              child: Padding(
                // padding: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.only(left: 16, right: 13),

                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizeBox(
                        height: 30,
                      ),
                      sizeBox(
                        height: 20,
                      ),
                      sizeBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
*/
/*
 return Scaffold(
      body: Container(
        width: 385,
        child: Padding(
          // padding: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.only(left: 16, right: 13),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizeBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 0.1),
                        color: Color.fromARGB(255, 193, 173, 173),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      // color: Color.fromARGB(255, 35, 29, 29),
                      width: 253,
                      height: 46,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: 'search',
                          // border: bor
                        ),
                      ),
                    ),
                    Icon(Icons.favorite_border_outlined), // ),
                    Badge(
                      badgeContent: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 10
                        ),
                      ),
                      child: InkWell(
                        onTap: (() => {}),
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                    ),
                    sizeBox(
                      width: 1,
                    ),
                    // Icon(Icons.favorite),
                  ],
                ),
                sizeBox(
                  height: 20,
                ),
                Container(
                  width: 343,
                  height: 206,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey, width: 0.1),
                    color: Color.fromARGB(255, 193, 173, 173),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "title\n50% off",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 0.5,
                                height: 1.5,
                              ),
                            ),
                            sizeBox(
                              height: 30,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 42,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.grey, width: 0.1),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "0.8",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                sizeBox(
                                  width: 4,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                sizeBox(
                  height: 30,
                ),
                sectionProduct(name: 'Category', seeMore: 'More Category'),
                sizeBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          // width: 80,
                          // height: 0,
                          // decoration: BoxDecoration(
                          //   // border: Border.all(color: Colors.grey, width: 0.1),
                          //   color: Color.fromARGB(255, 224, 158, 111),
                          //   borderRadius: BorderRadius.circular(6),
                          // ),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffEBF0FF),
                                  ),
                                  // color: Color.fromARGB(255, 199, 193, 190),
                                  borderRadius: BorderRadius.circular(66),
                                ),
                                child: Icon(Icons.man),
                              ),
                              sizeBox(
                                height: 8,
                              ),
                              Text(
                                'Man Shirt',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff9098B1),
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
                sizeBox(
                  height: 24,
                ),
                sectionProduct(name: 'Flash Sale', seeMore: 'See More'),
                sizeBox(
                  height: 24,
                ),
                Row(
                  // width: 141,
                  //     height: 238,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    productCard(
                      icon: Icons.fort_outlined,
                      title: 'FS - Nike Air',
                      description: 'Max 270 React...',
                      price: 534.33,
                      precentage: 24,
                    ),
                    sizeBox(width: 16),
                  ],
                ),
                sizeBox(height: 9),
                sectionProduct(name: 'Mega Sale', seeMore: 'See More'),
                sizeBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 */
/*
Container(
                      // width: 141,
                      // height: 238,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 0.1),
                        color: Color.fromARGB(255, 224, 158, 111),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("boot"),
                                    Row(
                                      children: [
                                        Text("4.5"),
                                        Icon(
                                          Icons.star_border,
                                          size: 12,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  size: 19,
                                ),
                              ],
                            ),
                            Icon(Icons.headphones, size: 60),
                            // Icon(Icons.headphones, size: 60),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('data'),
                                Icon(Icons.add),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
*/