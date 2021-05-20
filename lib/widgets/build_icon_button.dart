import 'package:flutter/material.dart';

Widget buildIconButton(IconData icon, String title) {
  return IconButton(
    padding: EdgeInsets.only(left: 30.0),
    onPressed: () => print(title),
    icon: Icon(icon),
    iconSize: 30.0,
    color: Colors.black,
  );
}
