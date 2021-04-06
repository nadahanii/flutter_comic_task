import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/* 
during performing the task , i found that when i uncomment the border radius part ,
this makes the border of the first image not visible.
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
              top: 150.0), //to separate the first image from the screen's top
          child: Center(
            child: Column(
              children: [
                Container(
                  //first image
                  width: 400.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    //borderRadius:
                    // BorderRadius.vertical(top: Radius.circular(16.0)),
                    border: Border(
                      top: BorderSide(color: Colors.red, width: 3.0),
                      // bottom: BorderSide(color: Colors.red, width: 3.0),
                      left: BorderSide(color: Colors.red, width: 3.0),
                      right: BorderSide(color: Colors.red, width: 3.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/my_meme_1.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  //second image
                  width: 400.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    // borderRadius:
                    // BorderRadius.vertical(bottom: Radius.circular(16.0)),
                    border: Border(
                      bottom: BorderSide(color: Colors.red, width: 3.0),
                      top: BorderSide(color: Colors.red, width: 3.0),
                      left: BorderSide(color: Colors.red, width: 3.0),
                      right: BorderSide(color: Colors.red, width: 3.0),
                    ),
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
