import 'package:agro_store/Consumer/Screens/Auth_screen/log_in.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:flutter/material.dart';
import '../Consumer/Screens/Bottom_nav_pages/History/history.dart';
import '../Consumer/Screens/Bottom_nav_pages/Messages/messages.dart';
import '../Consumer/Screens/Products/products_screen.dart';
import '../Consumer/Screens/orders.dart';
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ProductsScreen()));
                        },
                        child: const ListTile(
                          leading: Text('Products'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => HistoryPage('drawer')));
                        },
                        child: const ListTile(
                          leading: Text('History'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => OrdersScreen()));
                        },
                        child: const ListTile(
                          leading: Text('Orders'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Messages('drawer')));
                        },
                        child: const ListTile(
                          leading: Text('Massages'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: Text('Send Demoplaint'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: Text('About Us'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: Text('Settings'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: Text('Contact us'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Center(child: Text('Exit')),
                          content: const Text('Are you sure you want to exit?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LogInPage())),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
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
