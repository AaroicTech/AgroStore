import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';
import '../Stlyes/colors.dart';
import '../Stlyes/fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Text('Products'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('History'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('Orders'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('assets/google.png')),
                        title: const Text('5339............5678'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Column(
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
                                  height: 70,
                                  width: 70,
                                  color: primaryColor,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                child: Container(
                                  height: 70,
                                  width: 70,
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
                        ],
                      ),
                      ListTile(
                        leading: const Text('Amount to be Paid'),
                        trailing: const Text('23000.00'),
                      ),
                      ListTile(
                        leading: const Text('Shipping'),
                        trailing: const Text('210.00'),
                      ),
                      ListTile(
                        leading: const Text('Vat'),
                        trailing: const Text('20.00'),
                      ),
                      ListTile(
                        leading: const Text('Total'),
                        trailing: const Text('23010.00'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Container(
                    height: 40,
                    width: 80,
                    color: primaryColor,
                    alignment: Alignment.bottomLeft,
                    child: Center(
                      child: Text(
                        'Proceed',
                        style: textStyle1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
