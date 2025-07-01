import 'package:flutter/material.dart';

import 'Introduction_screen.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>IntroScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Color(0xfffae9e6),
      body: Center(
        child: Image.asset('assets/.png', width: 200),
      ),
    );
  }
}
