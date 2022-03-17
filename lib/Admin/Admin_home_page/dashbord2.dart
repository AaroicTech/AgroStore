import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';
import '../../Stlyes/colors.dart';
import 'dashbord.dart';

class SecondDashbord extends StatefulWidget {
  const SecondDashbord({Key? key}) : super(key: key);

  @override
  State<SecondDashbord> createState() => _SecondDashbordState();
}

class _SecondDashbordState extends State<SecondDashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
                SizedBox(width: 210),
                Text('Applications'),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
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
                      leading: CircleAvatar(),
                      title: Text('Approved'),
                      subtitle: Text('asdasdasd'),
                      trailing: Container(
                        height: 10,
                        width: 100,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text('Declined'),
                      subtitle: Text('asdasdasd'),
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
