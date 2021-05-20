import 'package:flutter/material.dart';
import 'package:my_netflix_design/models/movie_models.dart';

class MovieScreen extends StatefulWidget {
  final Movie movie;

  const MovieScreen({Key key, this.movie}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage(widget.movie.imageUrl),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.only(left: 30),
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                    iconSize: 30,
                  ),
                  Image(
                    image: AssetImage('assets/images/netflix_logo.png'),
                    height: 60.0,
                    width: 150.0,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 30),
                    icon: widget.movie.favorite
                        ? Icon(Icons.favorite, color: Colors.pink)
                        : Icon(Icons.favorite_border),
                    onPressed: () => _update(),
                    iconSize: 30,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  _update() {
    widget.movie.favorite = !widget.movie.favorite;
    widget.movie.favorite
        ? print('Add to your favorite list movie')
        : print('Delete from your favorite list movie');
    setState(() {});
  }
}
