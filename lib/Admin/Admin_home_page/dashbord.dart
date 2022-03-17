import 'package:agro_store/Admin/Admin_drawer/admin_drawer.dart';
import 'package:agro_store/Admin/Admin_home_page/dashbord2.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';
import '../../Stlyes/colors.dart';

class FirstDashbord extends StatefulWidget {
  const FirstDashbord({Key? key}) : super(key: key);

  @override
  State<FirstDashbord> createState() => _FirstDashbordState();
}

class _FirstDashbordState extends State<FirstDashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      appBar: appBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  'Earnings',
                  style: textStyle2,
                ),
                const SizedBox(width: 200),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SecondDashbord()));
                    },
                    child: const Text('Applications')),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SecondDashbord()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                )
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
                        '\$15000000',
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
              //child: BarChart([]),
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
                      leading: const CircleAvatar(
                        child: const Icon(Icons.online_prediction_rounded),
                      ),
                      title: const Text('Ordered'),
                      subtitle: const Text('asdasdasd'),
                      trailing: Container(
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        child: const Icon(Icons.drive_eta),
                      ),
                      title: const Text('Ordered'),
                      subtitle: const Text('asdasdasd'),
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
