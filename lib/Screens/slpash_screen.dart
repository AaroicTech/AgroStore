import 'package:flutter/material.dart';

import 'Bottom_nav_pages/Home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const  Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
    return Scaffold(
      body: Container(child: const CircularProgressIndicator()),
    );
  }
}
