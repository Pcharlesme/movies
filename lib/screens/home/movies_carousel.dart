import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:moviesapp/models/movies.dart';
import 'package:moviesapp/screens/home/moviescard.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;
  double page = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.81,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: AspectRatio(
        aspectRatio: 0.80,
        child: PageView.builder(
            onPageChanged: ((value) {
              setState(() {
                initialPage = value;
              });
            }),
            controller: _pageController,
            physics: const ClampingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) => buildMovieSlider(index)),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            // value = index - _pageController.page;
            // work on this error value = index - _pageController.page;

            value = (value * 0.038).clamp(-1, 1);
          }
          return Transform.rotate(
              angle: math.pi * value, child: MoviesCard(movie: movies[index]));
        },
      );
}
