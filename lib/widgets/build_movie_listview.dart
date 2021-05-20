import 'package:flutter/material.dart';
import 'package:my_netflix_design/Screens/movie_screen.dart';
import 'package:my_netflix_design/models/movie_models.dart';

Widget buildMovieListView(double height, List<String> data, bool movieTitle) {
  return Container(
    height: height,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            GestureDetector(
              onTap: movieTitle
                  ? () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MovieScreen(movie: movies[index]),
                        ),
                      )
                  : () => {},
              child: Row(
                children: [
                  Container(
                    height: height,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Image(image: AssetImage(data[index])),
                        Positioned(
                            bottom: 30,
                            left: 10,
                            child: Wrap(direction: Axis.horizontal, children: [
                              Text(
                                movieTitle ? 'This is movie title' : '',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
}
