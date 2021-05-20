import 'package:flutter/material.dart';
import 'package:my_netflix_design/Screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Netflix App',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
