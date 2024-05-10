import 'package:flutter/material.dart';
import 'package:flutter_commerce/models/coffee.dart';

class Cart extends ChangeNotifier {
  List<Coffee> coffeeShop = [
    Coffee(
        name: 'Matcha',
        description: 'Tasty coffee',
        imagePath: 'lib/images/matcha.avif',
        price: '55000'),
    Coffee(
        name: 'Americano',
        description: 'Tasty coffee',
        imagePath: 'lib/images/americano.webp',
        price: '20000'),
    Coffee(
        name: 'Latte',
        description: 'Tasty coffee',
        imagePath: 'lib/images/latte.webp',
        price: '35000'),
  ];

  List<Coffee> userCart = [];
  List<Coffee> getCoffeeList() {
    return coffeeShop;
  }

  List<Coffee> getUserCart() {
    return userCart;
  }

  void addItemToCart(Coffee coffee) {
    userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    userCart.remove(coffee);
    notifyListeners();
  }
}
