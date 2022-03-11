import 'package:agro_store/Screens/slpash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgroStore',
      theme: ThemeData(      
        primarySwatch: Colors.blue,
      ),
    home: SplashScreen(),
    );
  }
}
