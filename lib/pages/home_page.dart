import 'package:flutter/material.dart';
import 'package:flutter_commerce/components/bottom_nav_bar.dart';
import 'package:flutter_commerce/pages/cart_page.dart';
import 'package:flutter_commerce/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              'lib/images/starbucks.svg.webp',
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
