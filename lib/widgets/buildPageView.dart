import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix_design/Screens/movie_screen.dart';
import 'package:my_netflix_design/my%20models/movie_models.dart';

Widget BuildPageView(BuildContext context, int index) {
  return GestureDetector(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MovieScreen(movie: movies[index]),
      ),
    ),
    child: Stack(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage(movies[index].imageUrl))),
        Positioned(
            bottom: 30,
            left: 10,
            child: Wrap(direction: Axis.horizontal, children: [
              Text(
                movies[index].title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ])),
      ],
    ),
  );
}
