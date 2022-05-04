import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';

import '../Admin_drawer/admin_drawer.dart';

class AdminMessages extends StatefulWidget {
  const AdminMessages(this.path, {Key? key}) : super(key: key);

  final String path;

  @override
  State<AdminMessages> createState() => _AdminMessagesState();
}

GlobalKey<ScaffoldState> key = GlobalKey();

void showDrawer() {
  key.currentState!.openDrawer();
}

class _AdminMessagesState extends State<AdminMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminDrawer(),
      key: key,
      appBar: widget.path == 'main' ? null : appBar(onTap: showDrawer),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Column(
              children: List.generate(
                7,
                (index) => GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => Compliant()));
                  },
                  child: Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        child: Text('AB'),
                      ),
                      title: Text(
                          'About Order with Application id:363436346354353',
                          style: textStyle0),
                      subtitle: Text('We have all your request ready',
                          style: textStyle0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
