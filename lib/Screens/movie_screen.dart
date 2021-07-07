import 'package:flutter/material.dart';
import 'package:my_netflix_design/my models/movie_models.dart';

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
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
              Container(
                height: 370,
                child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    child: Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.movie.imageUrl),
                    ),
                  ),
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
              Positioned.fill(
                // bottom: 10.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(10.0),
                    elevation: 12.0,
                    onPressed: () => print('Play Video'),
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow,
                      size: 60.0,
                      color: Colors.red,
                    ),
                  ),
                ),
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

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 65);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 65);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
