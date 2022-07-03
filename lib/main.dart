import 'package:flutter/material.dart';
import 'package:moviesapp/screens/home/homescreen.dart';
import 'package:moviesapp/screens/home/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Phoneinput(),
    );
  }
}
