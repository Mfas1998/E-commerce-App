class CategoryData {
  final String title;
  final String iconUrl;

  const CategoryData({required this.title, required this.iconUrl});
}

const List<CategoryData> categoryData = [
  CategoryData(
    title: 'Man Shirt',
    iconUrl: 'assets/icons/shirt.png',
  ),
  CategoryData(
    title: 'Dress',
    iconUrl: 'assets/icons/dress.png',
  ),
  CategoryData(
    title: 'Man Work\nEquipment',
    iconUrl: 'assets/icons/manbag.png',
  ),
  CategoryData(
    title: 'Woman Bag',
    iconUrl: 'assets/icons/womanbag.png',
  ),
];
