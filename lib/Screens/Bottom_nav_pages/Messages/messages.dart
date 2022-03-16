import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
           
            Column(
              children: List.generate(
                4,
                (index) => Card(
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
            )
          ],
        ),
      ),
    );
  }
}
