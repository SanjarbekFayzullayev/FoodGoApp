import 'package:flutter/material.dart';
import 'package:food_app/bottom_navigation_bar.dart';
import 'package:food_app/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> seconds() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => BottomNavigationBarPage(),
      ),
      (route) => false,
    );
  }

  @override
  void initState() {
    seconds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splashscreen.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
