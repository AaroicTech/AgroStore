
import 'package:flutter/material.dart';

import 'Auth_screen/log_in.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => LogInPage()), (route) => false);
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
