import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding:const EdgeInsets.all(8.0),
      child: ListView(
        children: List.generate(
          5,
          (index) => Card(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text('235245245023423'),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      child: Container(
                        height: 80,
                        width: 80,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      child: Container(
                        height: 80,
                        width: 80,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      child: Text(
                        'Maize and Groundnut\nseeds giiven wiith 6 bags\nof Fertilizers',
                        style: textStyle4,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text('Approved on:'),
                    const SizedBox(width: 20),
                    const Text('18 03 2022'),
                    const SizedBox(width: 100),
                    Container(
                      //alignment: Alignment.bottomRight,
                      child: Container(
                        height: 20,
                        width: 80,
                        color: primaryColor,
                        child: Center(
                          child: Text('Approved', style: textStyle1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
