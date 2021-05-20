import 'package:flutter/material.dart';
import 'package:my_netflix_design/models/movie_models.dart';
import 'package:my_netflix_design/widgets/build_tag_choices.dart';
import 'package:my_netflix_design/widgets/build_movie_listview.dart';
import 'package:my_netflix_design/widgets/build_item.dart';
import 'package:my_netflix_design/widgets/build_icon_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> listImageUrl = [];
    for (Movie mov in movies) {
      listImageUrl.add(mov.imageUrl);
    }
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Image(
            image: AssetImage('assets/images/netflix_logo.png'),
          ),
          leading: buildIconButton(Icons.menu, 'Menu showed'),
          actions: <Widget>[
            buildIconButton(Icons.search, 'Searching'),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(25),
          children: <Widget>[
            buildMovieListView(250, listImageUrl, true),
            SizedBox(
              height: 15,
            ),
            buildItem(),
            SizedBox(
              height: 15,
            ),
            buildTag('My lists'),
            SizedBox(
              height: 10,
            ),
            buildMovieListView(200, myList, false),
            SizedBox(
              height: 15,
            ),
            buildTag('Popular on Netflix'),
            SizedBox(
              height: 10,
            ),
            buildMovieListView(200, popular, false),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
