import 'package:flutter/material.dart';
import 'package:simple_shop/components/bottom_nav_bar.dart';
import 'package:simple_shop/pages/cart_page.dart';
import 'package:simple_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index will be used to change the bottom navigation bar
  int selectedIndex = 0;

  // this method will update the selected index
  // when the bottom navigation bar is tapped
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[selectedIndex],
    );
  }
}
