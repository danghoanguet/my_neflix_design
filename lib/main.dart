import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_netflix_design/Screens/home_screen.dart';
import 'package:my_netflix_design/data/models/movie_model.dart';
import 'package:my_netflix_design/data/repository/movie_repo/movie_repository.dart';

void main() async {
  MovieRepository movieRepository = MovieRepository();
  movieRepository.fetchPopularMovies();
  List<MovieModel> listMovies = await movieRepository.fetchPopularMovies();
  String imageUrl = "$BASE_IMAGE" + listMovies[16].posterPath;
  print("$BASE_IMAGE\n");
  print(imageUrl);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Netflix App',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
