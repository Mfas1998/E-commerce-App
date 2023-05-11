import 'package:flutter/material.dart';

class ProductData {
  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final double precentage;

  const ProductData(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.price,
      required this.precentage});
}

const flashSale = [
  ProductData(
    imageUrl: 'assets/images/yellw_boots.png',
    title: 'FS - Nike Air',
    description: 'Max 270 React...',
    price: 534.33,
    precentage: 24,
  ),
  ProductData(
    imageUrl: 'assets/images/bag.png',
    title: 'FS - QUILTED',
    description: 'MAXI CROS...',
    price: 534.33,
    precentage: 24,
  ),
   ProductData(
    imageUrl: 'assets/images/bag.png',
    title: 'FS - Nike Air',
    description: 'Max 270 React...',
    price: 534.33,
    precentage: 24,
  ),
];

const List<ProductData> megaSale = [
  ProductData(
    imageUrl: 'assets/images/red_bag.png',
    title: 'MS - Nike Air',
    description: 'Max 270 React...',
    price: 534.33,
    precentage: 24,
  ),
  ProductData(
    imageUrl: 'assets/images/boots.png',
    title: 'MS - Nike Air',
    description: 'Max 270 React...',
    price: 534.33,
    precentage: 24,
  ),
   ProductData(
    imageUrl: 'assets/images/red_boots.png',
    title: 'MS - Nike Air',
    description: 'Max 270 React...',
    price: 534.33,
    precentage: 24,
  ),
];
