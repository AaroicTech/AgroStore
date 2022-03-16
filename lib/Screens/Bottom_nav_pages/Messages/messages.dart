import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:flutter/material.dart';
import '../../complaint.dart';

class Messages extends StatefulWidget {
  Messages(this.path, {Key? key}) : super(key: key);

  final String path;

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:widget. path == 'main' ? null : appBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Column(
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Compliant()));
                  },
                  child: Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                      ),
                      title: Text(
                          'About Order with Application id:363436346354353',
                          style: textStyle0),
                      subtitle: Text('We have', style: textStyle0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
