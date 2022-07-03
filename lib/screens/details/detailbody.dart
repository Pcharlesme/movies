import 'package:flutter/material.dart';
import 'package:moviesapp/models/movies.dart';
import 'package:moviesapp/screens/details/detailmain.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(
        movie: movie,
      ),
    );
  }
}
