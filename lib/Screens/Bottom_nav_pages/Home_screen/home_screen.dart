import 'package:agro_store/Screens/Products/products_screen.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';
import '../../../Stlyes/colors.dart';

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
          minimum: const EdgeInsets.only(top: 10),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: Container(
                    child: Image.asset('assets/Frame 33575.png'),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: Text(
                      'Agricultural Subsidization Scheme by the Governmet',
                      style: textStyle0),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(
                      'Products Given',
                      style: textStyle0,
                    ),
                    const SizedBox(width: 200),
                    Text(
                      'See more',
                      style: textStyle2,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              5,
                              (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      const ProductsScreen()));
                                        },
                                        child: Card(
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Card(
                                                    child: Container(
                                                      child: Container(
                                                        height: 70,
                                                        width: 70,
                                                        color: primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      child: Container(
                                                        height: 70,
                                                        width: 70,
                                                        color: red,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                  'Maize and Groundnut given\nwith 6 bags of\nFertilizers',
                                                  style: textStyle0),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Card(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Card(
                                                  child: Container(
                                                    child: Container(
                                                      height: 70,
                                                      width: 70,
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                ),
                                                Card(
                                                  child: Container(
                                                    child: Container(
                                                      height: 70,
                                                      width: 70,
                                                      color: red,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                                'Soyabeans and Sorghum\ngiven with 6 bags of\nFertilizers',
                                                style: textStyle0)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      alignment: Alignment.bottomLeft,
                      child: Text('Gallary', style: textStyle0),
                    ),
                    Card(
                      elevation: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                5,
                                (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Container(
                                            height: 100,
                                            width: 90,
                                            color: primaryColor,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          child: Container(
                                            height: 100,
                                            width: 90,
                                            color: red,
                                          ),
                                        ),
                                      ],
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
