import 'package:flutter/material.dart';
import '../Stlyes/colors.dart';

appBar({VoidCallback? onTap}) {
  return AppBar(
    leading: IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.save,
        color: primaryColor,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Container(
      width: 100,
      child: Image.asset('assets/agro_store.png'),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/unsplash_i2hoD-C2RUA.png'),
        ),
      ),
    ],
  );
}
