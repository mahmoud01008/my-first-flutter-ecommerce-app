import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'Cart_Screen.dart';
import 'Favorite_Screen.dart';
import 'Home_Screen.dart';
import 'Profile_Screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int pageIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.shopping_cart,
    Icons.favorite,
    Icons.person,
  ];

  final pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(child:
      FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xfff1c6b8),
        child: Icon(Icons.add),
      ),
    ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons:[
            Icons.home,
            Icons.shopping_cart,
            Icons.favorite,
            Icons.person,
          ],
          inactiveColor: Colors.grey.withOpacity(0.5),
          activeColor: Color(0xffea5425),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          iconSize: 25,
          rightCornerRadius: 32,
          activeIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          }
      )
    );
  }
}
