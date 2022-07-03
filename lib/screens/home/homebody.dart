import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moviesapp/constants.dart';
import 'package:moviesapp/models/movies.dart';
import 'dart:math' as math;
import 'package:moviesapp/screens/home/genre.dart';
import 'package:moviesapp/screens/home/movies_carousel.dart';
import 'package:moviesapp/screens/home/moviescard.dart';

import 'category.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CategoryList(),
          Genres(),
          SizedBox(height: 20),
          MovieCarousel(),
        ],
      ),
    );
  }
}

//Genres Components
class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Actions",
      "Comedy",
      "Crime",
      "Drama",
      "Horror",
      "Animation",
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 36,
      child: GestureDetector(
        onTap: () {},
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GeneCard(genre: genres[index]),
        ),
      ),
    );
  }
}
