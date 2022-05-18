import 'dart:io';

import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:agro_store/Utils/file_picker_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../../Widget/appbar.dart';
import '../../Widget/drawer.dart';

class ApplicationPage extends StatefulWidget {
  ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  GlobalKey<ScaffoldState> _key = GlobalKey();

  void showDrawer() {
    _key.currentState!.openDrawer();
  }

  String imagePath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const MainDrawer(),
      appBar: appBar(onTap: showDrawer),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Application Number',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Upload image of valid ID',
                        style: textStyle0,
                      ),
                    ),
                    imagePath == ''
                        ? Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                pickProfileImage(type: FileType.image)
                                    .then((value) {
                                  setState(() {
                                    imagePath = value;
                                  });
                                });
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: grey,
                                    child: Icon(
                                      Icons.add,
                                      color: white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Tap to Upload image',
                                    style: textStyle0,
                                  )
                                ],
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              pickProfileImage(type: FileType.image)
                                  .then((value) {
                                setState(() {
                                  imagePath = value;
                                });
                              });
                            },
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border: Border.all(color: grey),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: FileImage(File(imagePath)))),
                            ),
                          ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Name',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Moblie Number',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Camp Address',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Previews',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Content',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: primaryColor,
                        height: 30,
                        width: 60,
                        child: Center(
                          child: Text(
                            'Submit',
                            style: textStyle1,
                          ),
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
    );
  }
}
