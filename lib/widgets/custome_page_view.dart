import 'package:flutter/material.dart';

import 'custome_size_box.dart';

class CustomePageView extends StatefulWidget {
  final String title;
  final String precentage;
  final String num1;
  final String num2;
  final String num3;
  final String imageUrl;
  CustomePageView(
      {required this.title,
      required this.precentage,
      required this.num1,
      required this.num2,
      required this.num3,
      required this.imageUrl});

  @override
  State<CustomePageView> createState() => _CustomePageView(this.title,
      this.precentage, this.num1, this.num2, this.num3, this.imageUrl);
}

class _CustomePageView extends State<CustomePageView> {
  late String title;
  late String precentage;
  late String num1;
  late String num2;
  late String num3;
  late String imageUrl;
  _CustomePageView(title, precentage, num1, num2, num3, imageUrl) {
    this.title = title;
    this.precentage = precentage;
    this.num1 = num1;
    this.num2 = num2;
    this.num3 = num3;
    this.imageUrl = imageUrl;
  }
  late final PageController pageController;
  int pageNumber = 2;
  @override
  void initState() {
    pageController = PageController(initialPage: 2);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 343,
          height: 206,
          child: PageView.builder(
            pageSnapping: true,
            itemCount: 5,
            onPageChanged: (index) {
              pageNumber = index;
              setState(() {});
            },
            controller: pageController,
            itemBuilder: (context, index) => AnimatedBuilder(
              animation: pageController,
              builder: (ctx, child) {
                return child!;
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                // width: 990,
                // height: 206,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl)),
                  // border: Border.all(color: Colors.grey, width: 0.1),
                  // color: Color.fromARGB(255, 193, 173, 173),
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
                            '${title}\n${precentage} off',
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
                                  '${num1}',
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              sizeBox(
                                width: 4,
                              ),
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
                                  '${num2}',
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              sizeBox(
                                width: 4,
                              ),
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
                                  '${num3}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
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
            ),
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: pageNumber == index
                      ? Color(0xff40BFFF)
                      : Color(0xffEBF0FF),
                ),
              ),
            )),
      ],
    );
  }
}


/*
Container pageView(
        {required String title,
        required String precentage,
        required String num1,
        required String num2,
        required String num3}) =>
    Container(
      width: 343,
      height: 206,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Promotion Image.png')),
        // border: Border.all(color: Colors.grey, width: 0.1),
        // color: Color.fromARGB(255, 193, 173, 173),
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
                  '${title}\n${precentage}% off',
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
                        '${num1}',
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    sizeBox(
                      width: 4,
                    ),
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
                        '${num2}',
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    sizeBox(
                      width: 4,
                    ),
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
                        '${num3}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
*/