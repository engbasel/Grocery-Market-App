import '../../Features/Home/Widgets/CoustomListItem.dart';
import '../../Features/Snacks/Widgets/CoustomCardSnacks.dart';

final List<CustomListItem> homeItems = [
  CustomListItem(
      View: '',
      imagePath: 'assets/Home/Fruits&Vegetables.png',
      textData: 'Fruits & Vegetables'),
  CustomListItem(
    imagePath: 'assets/Home/Breakfast.png',
    textData: 'Breakfast',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Beverages.png',
    textData: 'Beverages',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Meat&Fish.png',
    textData: 'Meat & Fish',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Snacks.png',
    textData: 'Snacks',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Milk.png',
    textData: 'Dairy',
    View: '',
  ),
];

final List<CustomListItem> categoryItems = [
  CustomListItem(
      View: '',
      onTap: () {},
      imagePath: 'assets/Category/image 2-3.png',
      textData: 'Fruits & Vegetables'),
  CustomListItem(
    imagePath: 'assets/Category/Fruits&Vegetables.png',
    textData: 'Breakfast',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Category/Dairy.png',
    textData: 'Breakfast',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Category/Meat&Fish.png',
    textData: 'Meat & Fish',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Category/Snacks.png',
    textData: 'Snacks',
    View: 'SnacksView',
    onTap: () {
      print('snakes');
    },
  ),
  CustomListItem(
    imagePath: 'assets/Category/Breakfast.png',
    textData: 'Dairy',
    View: '',
  ),
];

final List<SnackProductCard> snackItems = [
  const SnackProductCard(
    ScreenNamee: 'ProductDetailsBody',
    imagePath: 'assets/ProductDetails/Milkimage.png',
    productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productPrice: '225',
  ),
  const SnackProductCard(
    ScreenNamee: 'ProductDetailsBody',
    imagePath: 'assets/ProductDetails/Milkimage.png',
    productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productPrice: '225',
  ),
  const SnackProductCard(
    ScreenNamee: 'ProductDetailsBody',
    imagePath: 'assets/ProductDetails/Milkimage.png',
    productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productPrice: '225',
  ),
  const SnackProductCard(
    ScreenNamee: 'ProductDetailsBody',
    imagePath: 'assets/ProductDetails/Milkimage.png',
    productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productPrice: '225',
  ),
  const SnackProductCard(
    ScreenNamee: 'ProductDetailsBody',
    imagePath: 'assets/ProductDetails/Milkimage.png',
    productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productPrice: '225',
  ),
  const SnackProductCard(
    ScreenNamee: 'ProductDetailsBody',
    imagePath: 'assets/ProductDetails/Milkimage.png',
    productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
    productPrice: '225',
  ),
];
