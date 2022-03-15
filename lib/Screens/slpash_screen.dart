import 'package:agro_store/Screens/Auth_screen/log_in.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const  Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LogInPage()));
    });
    return Scaffold(
      body: Container(
        child: Center(
          child: Image(image: AssetImage('assets/agro_store.png')),
         
          ),
          ),
    );
  }
}
