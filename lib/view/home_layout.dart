import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'add_card.dart';
import 'explore.dart';
import 'home_screen.dart';
import 'offers_screen.dart';
import 'register.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
  List<Widget> getPage = [
    HomeScreen(),
    ExplorePag(),
    AddCard(),
    OfferScreen(),
    Register(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showUnselectedLabels: true,
        // backgroundColor: Colors.red,
        selectedItemColor: Color(0xff40BFFF),
        unselectedItemColor: Color(0xff9098B1),
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // activeIcon: widget,
            /* activeIcon: InkWell(
            onTap: () {
              // Get.toNamed("/Explorepag");
            
          ),*/
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
              child: InkWell(
                // onTap: (() => {}),
                child: Icon(Icons.shopping_cart_outlined),
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
