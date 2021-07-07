import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix_design/Screens/movie_screen.dart';

import 'package:my_netflix_design/my%20models/movie_models.dart';

Widget buildPageView(BuildContext context, int index) {
  // return Container(
  //   margin: EdgeInsets.symmetric(
  //     horizontal: 10,
  //   ),
  //   decoration: BoxDecoration(
  //     borderRadius: BorderRadius.circular(10.0),
  //     boxShadow: [
  //       BoxShadow(
  //         color: Colors.black54,
  //         offset: Offset(0.0, 4.0),
  //         blurRadius: 10.0,
  //       ),
  //     ],
  //   ),
  return GestureDetector(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MovieScreen(movie: movies[index]),
      ),
    ),
    child: Stack(
      children: <Widget>[
        Center(
          child: Container(
            height: 230,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Hero(
              tag: movies[index].imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage(movies[index].imageUrl),
                  //height: 230.0,
                  // this.height is Container.height
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 10.0,
          bottom: 20.0,
          child: Container(
            width: 250.0,
            child: Text(
              movies[index].title.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
    // ),
  );
}
