import 'package:e_commerce/core/utils/app_colors.dart';
//import 'package:e_commerce/view/register.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(
                  'assets/images/image.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
