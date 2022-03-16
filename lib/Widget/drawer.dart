import 'package:agro_store/Screens/Bottom_nav_pages/History/history.dart';
import 'package:agro_store/Screens/Bottom_nav_pages/Messages/messages.dart';
import 'package:agro_store/Screens/Products/products_screen.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:flutter/material.dart';
import '../Screens/orders.dart';
import '../Stlyes/fonts.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key, ListView? child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: white),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.clear, color: primaryColor),
                ),
                Container(
                  width: 100,
                  child: const Image(
                    image: AssetImage('assets/agro_store.png'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Text('Products'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductsScreen()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('History'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HistoryPage('drawer')));
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('Orders'),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>const OrdersPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('Massages'),
                        trailing: IconButton(
                          onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Messages('drawer')));},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('Send Demoplaint'),
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
                        leading: const Text('About Us'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('Settings'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      ListTile(
                        leading: const Text('Contact us'),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: textStyle2,
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
