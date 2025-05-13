import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

const List<Product> allProducts = [
  Product(
      id: '1',
      title: 'Groovy Shorts',
      price: 15,
      image: 'assets/products/shorts.png'
  ),
  Product(
      id: '2',
      title: 'Karati Kit',
      price: 12,
      image: 'assets/products/karati.png'
  ),
  Product(
      id: '3',
      title: 'Red Backpack',
      price: 22,
      image: 'assets/products/backpack.png'
  ),
  Product(
      id: '4',
      title: 'Drum & Sticks',
      price: 34,
      image: 'assets/products/drum.png'
  ),
  Product(
      id: '5',
      title: 'Denim Jeans',
      price: 54,
      image: 'assets/products/jeans.png'
  ),
  Product(
      id: '6',
      title: 'Blue Suitcase',
      price: 24,
      image: 'assets/products/suitcase.png'
  ),
  Product(
      id: '7',
      title: 'Roller Skates',
      price: 38,
      image: 'assets/products/skates.png'
  ),
  Product(
      id: '8',
      title: 'Electric Guitar',
      price: 45,
      image: 'assets/products/guitar.png'
  ),
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 50).toList();
});