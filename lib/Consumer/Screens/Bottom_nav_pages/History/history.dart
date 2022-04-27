import 'package:flutter/material.dart';
import '../../../../Stlyes/colors.dart';
import '../../../../Stlyes/fonts.dart';
import '../../../../Widget/appbar.dart';
import '../../../../Widget/drawer.dart';
import '../../status.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage(this.path, {Key? key}) : super(key: key);

  final String path;

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  GlobalKey<ScaffoldState> key = GlobalKey();

  void showDrawer() {
    key.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    // print(path);
    return Scaffold(
      drawer: const MainDrawer(),

     key:key,
      appBar: widget.path == 'main' ? null : appBar(onTap: showDrawer),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
            5,
            (index) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('235245245023423', style: textStyle0),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          child: Container(
                            height: 80,
                            width: 80,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          child: Container(
                            height: 80,
                            width: 80,
                            color: red,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          child: Text(
                            'Maize and Groundnut\nseeds giiven wiith 6 bags\nof Fertilizers',
                            style: textStyle0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Approved on:', style: textStyle0),
                        const SizedBox(width: 20),
                        Text('18 03 2022', style: textStyle0),
                        const SizedBox(width: 100),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const StatusPage()));
                          },
                          child: Container(
                            height: 20,
                            width: 80,
                            color: primaryColor,
                            child: Center(
                              child: Text('Approved', style: textStyle1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
