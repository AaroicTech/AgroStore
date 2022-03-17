import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';
import '../../Widget/appbar.dart';
import '../../Widget/drawer.dart';

class Compliant extends StatelessWidget {
  Compliant({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
     key: key,
      drawer: const MainDrawer(),
      appBar: appBar( onTap: showDrawer),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Application ID',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Description of Compliant',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: primaryColor,
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            'Send',
                            style: textStyle1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
