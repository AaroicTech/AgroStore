import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';
import '../Stlyes/colors.dart';

appBar({VoidCallback? onTap}) {
  return AppBar(
    leading: IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.menu,
        color: primaryColor,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          child: Image.asset('assets/agro_store.png'),
        ),
        CircleAvatar(
            child: Text(
              'AS',
              style: textStyle2,
            ),
            backgroundColor: Colors.black12)
      ],
    ),
  );
}
