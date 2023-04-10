import 'package:e_commerce/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Favorite Product', icon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 13),
        child: ListView(
          children: [
           
            
            
          ],
        ),
      ),
    );
  }
}