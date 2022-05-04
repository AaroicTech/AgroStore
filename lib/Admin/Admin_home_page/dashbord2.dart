import 'package:agro_store/Admin/Admin_drawer/admin_drawer.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';
import '../../Stlyes/colors.dart';
import 'adminApplication.dart';
import 'dashbord.dart';

class SecondDashbord extends StatefulWidget {
  const SecondDashbord({Key? key}) : super(key: key);

  @override
  State<SecondDashbord> createState() => _SecondDashbordState();
}

class _SecondDashbordState extends State<SecondDashbord> {
  GlobalKey<ScaffoldState> key = GlobalKey();
  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      key: key,
      appBar: appBar(onTap: showDrawer),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const FirstDashbord()));
                  },
                  child: Text(
                    'Earnings',
                    style: textStyle2,
                  ),
                ),
                const SizedBox(width: 210),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const AdminApplication()));
                    },
                    child: const Text('Application'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Total Income for this month',
                        style: textStyle2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '300',
                        style: textStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Activity',
                          style: textStyle2,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(),
                      title: const Text('Approved'),
                      subtitle: const Text(' successful'),
                      trailing: Container(
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(),
                      title: const Text('Declined'),
                      subtitle: const Text('Invalid transaction'),
                      trailing: Container(
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
