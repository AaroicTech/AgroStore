import 'package:agro_store/Screens/Bottom_nav_pages/History/history.dart';
import 'package:agro_store/Screens/Products/product_detail.dart';
import 'package:agro_store/Screens/application.dart';
import 'package:agro_store/Screens/complaint.dart';
import 'package:agro_store/Screens/payment.dart';
import 'package:agro_store/Screens/status.dart';
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
        primarySwatch: Colors.green,
      ),
     // home: const SplashScreen(),
    home: PaymentPage(),
     
    );
  }
}
