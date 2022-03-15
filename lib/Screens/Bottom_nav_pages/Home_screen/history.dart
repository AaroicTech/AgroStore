import 'package:flutter/material.dart';

class HistroryPage extends StatelessWidget {
  const HistroryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          child: Row(
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/PHOTO&RAITING.png'),
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/PHOTO&RAITING.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
