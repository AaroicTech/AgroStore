import 'package:agro_store/Consumer/Screens/Bottom_nav_pages/Profile/profile.dart';
import 'package:agro_store/Consumer/Screens/orders.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:flutter/material.dart';
import '../../Stlyes/fonts.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key, ListView? child}) : super(key: key);

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
                const SizedBox(width: 6),
                Container(
                  width: 100,
                  child:const Text('Admin'),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ProfilePage()));
                        },
                        child: const ListTile(
                          leading: const Text('Profile'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => OrdersPage()));
                        },
                        child: const ListTile(
                          leading: const Text('Orders'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: const Text('Track Orders'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: const Text('Download Invoice'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ListTile(
                          leading: const Text('Settings'),
                          trailing: const Icon(Icons.arrow_forward_ios),
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
