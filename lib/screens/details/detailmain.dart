import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moviesapp/constants.dart';
import 'package:moviesapp/models/movies.dart';
import 'package:moviesapp/screens/details/component/backdrop.dart';
import 'package:moviesapp/screens/details/component/titledurationbtn.dart';
import 'package:moviesapp/screens/home/genre.dart';

class DetailBody extends StatelessWidget {
  final Movie movie;
  const DetailBody({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          const SizedBox(
            height: 20,
          ),
          TitleDurationAndElevBtn(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movie.genra.length,
                itemBuilder: (context, index) => GeneCard(
                  genre: movie.genra[index],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(
            casts: movie.cast,
          ),
        ],
      ),
    );
  }
}

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "Cast and Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: casts.length,
                itemBuilder: (context, index) => CastCard(cast: casts[index]),
              )),
        ],
      ),
    );
  }
}

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            cast["orginalName"],
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            cast["movieName"],
            maxLines: 1,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
