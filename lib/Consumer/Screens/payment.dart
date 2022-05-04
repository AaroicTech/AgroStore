import 'package:agro_store/Consumer/Screens/application.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:agro_store/Widget/drawer.dart';
import 'package:flutter/material.dart';
import '../../Stlyes/colors.dart';
import '../../Stlyes/fonts.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
     key: key,
      appBar: appBar(onTap: showDrawer),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.only(right: 260),
                            child: Text(
                              '235245245023423',
                              style: textStyle0,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: primaryColor,
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: red,
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  'Maize and Groundnut\nseeds giiven wiith 6 bags\nof Fertilizers',
                                  style: textStyle4,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                      ListTile(
                        leading: Text('Amount to be Paid', style: textStyle4),
                        trailing: Text('23000.00', style: textStyle4),
                      ),
                      ListTile(
                        leading: Text('Shipping', style: textStyle4),
                        trailing: Text('210.00', style: textStyle4),
                      ),
                      ListTile(
                        leading: Text('Vat', style: textStyle4),
                        trailing: Text(
                          '20.00',
                          style: textStyle4,
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Total',
                          style: textStyle4,
                        ),
                        trailing: Text(
                          '23010.00',
                          style: textStyle4,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Application()));
                    },
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
