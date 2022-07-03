import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moviesapp/constants.dart';
import 'package:moviesapp/screens/details/detailbody.dart';

import '../../models/movies.dart';

class MoviesCard extends StatelessWidget {
  final Movie movie;
  const MoviesCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(movie: movie))),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [kDefaultShadow],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(movie.poster),
                  )),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                movie.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/star_fill.svg",
                  height: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "${movie.rating}",
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
