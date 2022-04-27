import 'package:agro_store/Admin/Admin_drawer/admin_drawer.dart';
import 'package:agro_store/Admin/Admin_home_page/admin_home_page.dart';
import 'package:agro_store/Admin/Admin_home_page/dashbord.dart';
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
      home: const AdminHomePage(),
    );
  }
}
//07062141269