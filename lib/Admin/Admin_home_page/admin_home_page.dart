import 'package:agro_store/Admin/Admin_drawer/admin_drawer.dart';
import 'package:agro_store/Admin/Admin_home_page/dashbord.dart';

import 'package:flutter/material.dart';
import '../../Widget/appbar.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

GlobalKey<ScaffoldState> key = GlobalKey();

void showDrawer() {
  key.currentState!.openDrawer();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: const AdminDrawer(),
      appBar: appBar(onTap: showDrawer),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView(
          padding: const EdgeInsets.all(20),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FirstDashbord()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: const Center(
                    child: Image(image: AssetImage('assets/Vector_1.png'))),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FirstDashbord()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: const Center(
                    // child: Image(image: AssetImage('assets/Vector_2.png')),
                    ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FirstDashbord()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: const Center(
                    // child: Image(image: AssetImage('assets/Vector_3.png')),
                    ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FirstDashbord()));
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: const Center(
                    // child: Image(image: AssetImage('assets/Vector_4.png')),
                    ),
              ),
            ),
          ],
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 6 / 6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 60,
          ),
        ),
      ),
    );
  }
}
