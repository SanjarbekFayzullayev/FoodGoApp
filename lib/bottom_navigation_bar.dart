import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/favorite_page.dart';
import 'package:food_app/home_page.dart';
import 'package:food_app/profile_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  static final List _pages = [
    const ProfilePage(),
    const FavoritePage(),
    const HomePage(),
  ];
  int selectedItem = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color(0xffEF2A39),
        onPressed: () {
          selectedItem = 2;
          setState(() {});
        },
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0xffEF2A39),
        activeColor: Colors.white,
        icons: [
          selectedItem == 0 ? Icons.person : Icons.person_2_outlined,
          selectedItem == 1 ? Icons.favorite : Icons.favorite_border
        ],
        activeIndex: selectedItem,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 1,
        rightCornerRadius: 1,
        onTap: (index) {
          selectedItem = index;
          setState(() {});
        },
      ),
      body: _pages[selectedItem],
    );
  }
}
