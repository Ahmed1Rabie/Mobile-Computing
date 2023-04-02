import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(' Birthday Card '),
              backgroundColor: Color(0xff5f72a8),
            ),
            body: Center(
              child: Column(
                children: [
                  Image.network(
                    'https://previews.123rf.com/images/pisanku/pisanku1809/pisanku180900041/107532897-happy-birthday-cake-white-background-vector-image.jpg',
                    height: 450,
                    width: 350,
                  ),
                  Center(
                    child: Text(
                      ' Happy Birthday ',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ],
              ),
            )));
  }
}