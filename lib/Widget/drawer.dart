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
                        onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductsScreen()));
                        },
                        child: ListTile(
                          leading: const Text('Products'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HistoryPage('drawer')));
                        },
                        child: ListTile(
                          leading: const Text('History'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>const OrdersPage()));
                        },
                        child: ListTile(
                          leading: const Text('Orders'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                    GestureDetector(
                      onTap:(){
                         Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Messages('drawer')));
                      },
                        child: ListTile(
                          leading: const Text('Massages'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: const Text('Send Demoplaint'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: const Text('About Us'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: const Text('Settings'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: const Text('Contact us'),
                          trailing:  const Icon(Icons.arrow_forward_ios),
                          
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
