import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix_design/Screens/movie_screen.dart';
import 'package:my_netflix_design/my%20models/movie_models.dart';

Widget BuildPageView(BuildContext context, int index) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10.0),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black54,
      //     offset: Offset(0.0, 4.0),
      //     blurRadius: 10.0,
      //   ),
      // ],
    ),
    child: GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MovieScreen(movie: movies[index]),
              ),
            ),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(movies[index].imageUrl))),
            ),
            Positioned(
                // bottom: 20,
                // left: 10,
                child: Container(
              width: 250,
              child: Text(
                movies[index].title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )),
          ],
        ) //),
        ),
  );
}
