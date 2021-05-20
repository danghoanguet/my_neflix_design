import 'package:flutter/material.dart';

Widget buildTag(String title) {
  return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, color: Colors.red),
          ),
          Icon(
            Icons.arrow_right_alt,
            size: 40,
          )
        ],
      ));
}
