import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
              top: 150.0, bottom: 145.0, right: 20.0, left: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            border: Border.all(width: 4.0, color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 7.0,
                spreadRadius: 5.0,
                offset: Offset(7, 7),
              ),
            ],
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  //first image
                  width: 350.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.0)),
                    image: DecorationImage(
                        image: AssetImage('assets/my_meme_1.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  //second image
                  width: 350.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16.0)),
                    image: DecorationImage(
                        image: AssetImage('assets/my_meme_2.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
