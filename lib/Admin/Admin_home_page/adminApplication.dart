import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';

class AdminApplication extends StatefulWidget {
  const AdminApplication({Key? key, ListView? child}) : super(key: key);

  @override
  State<AdminApplication> createState() => _AdminApplicationState();
}

GlobalKey<ScaffoldState> key = GlobalKey();

void showDrawer() {
  key.currentState!.openDrawer();
}

class _AdminApplicationState extends State<AdminApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(onTap: showDrawer),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Application Number'),
                      trailing: Text('1234556789345566'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Date Applied'),
                      trailing: Text('Name'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Name'),
                      trailing: Text('Deo'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Emain'),
                      trailing: Text('jeredoe@yahoo.com'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Mobile Number'),
                      trailing: Text('+345685445575'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Camp Name'),
                      trailing: Text('Jane Does Camp'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text('Camp Address'),
                      trailing: Text('No 18 farm street'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: Text(' Province'),
                      trailing: Text('Southem Province'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 70,
                  decoration:
                      BoxDecoration(border: Border.all(color: primaryColor)),
                  child: const Center(child: Text('Decline')),
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration:
                      BoxDecoration(color: primaryColor, border: Border.all()),
                  child: const Center(child: Text('Accept')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
