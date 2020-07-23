import 'package:flutter/material.dart';
import 'package:turbo_movie/screen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turbo Movie',
      theme: ThemeData(
        primaryColor: Colors.blue[400],
      ),
      home: Splashscreen(),
    );
  }
}
