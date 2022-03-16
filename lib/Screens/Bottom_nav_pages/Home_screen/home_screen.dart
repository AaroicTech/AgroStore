import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 20),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  height: 170,
                  width: 360,
                  decoration: BoxDecoration(
                      // color: deepOrange,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: Container(
                    child: Image.asset('assets/Frame 33575.png'),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(
                      'Product',
                    ),
                    const SizedBox(width: 245),
                    Text(
                      'See more',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 1,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                5,
                                (index) {
                                  return Container(
                                    child: Image(
                                      image:
                                          AssetImage('assets/Frame 33575.png'),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Gallary',
                        // style: textStyle111
                      ),
                    ),
                    Card(
                      elevation: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                5,
                                (index) {
                                  return Container(
                                    height: 50,
                                    child: Image(
                                      image:
                                          AssetImage('assets/Frame 33575.png'),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
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
