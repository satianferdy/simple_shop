import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    const Shoe(
      name: 'Nike Air Max 270',
      price: 270,
      description: 'cool shoes for everyday use so buy them now',
      imagePath: 'assets/images/shs9.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 235,
      description: 'cool shoes for everyday use so buy them now',
      imagePath: 'assets/images/shs2.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 150,
      description: 'cool shoes for everyday use good for running',
      imagePath: 'assets/images/shs3.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 150,
      description: 'cool shoes for everyday use for running',
      imagePath: 'assets/images/shs4.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 150,
      description: 'cool shoes for everyday use girl shoes',
      imagePath: 'assets/images/shs5.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 150,
      description: 'cool shoes for everyday use',
      imagePath: 'assets/images/shs6.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 150,
      description: 'cool shoes for everyday use',
      imagePath: 'assets/images/shs7.png',
    ),
    const Shoe(
      name: 'Nike Air Max 270',
      price: 150,
      description: 'cool shoes for everyday use',
      imagePath: 'assets/images/shs8.png',
    ),
  ];

  // list of shoes in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add shoe to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove shoe from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
