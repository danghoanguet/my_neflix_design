import 'package:flutter/material.dart';
import 'package:my_netflix_design/models/movie_models.dart';

Widget buildItem() {
  return Container(
    height: 65,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: labels.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            GestureDetector(
              onTap: () => print('You choose ${labels[index]}'),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFD45253),
                      Color(0xFF9E1F28),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9E1F28),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Center(
                    child: Text(
                  labels[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        );
      },
    ),
  );
}
