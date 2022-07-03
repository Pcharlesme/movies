import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/movies.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(50)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(movie.backdrop),
                )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      blurRadius: 50,
                      color: const Color(0xFF12153D).withOpacity(0.5),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset("assets/icons/star_fill.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "${movie.rating}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const TextSpan(text: "10\n"),
                              const TextSpan(
                                  text: "157,231",
                                  style: TextStyle(color: kTextLightColor))
                            ]),
                      ),
                    ],
                  ),
                  //RATE THIS
                  Column(
                    children: [
                      SvgPicture.asset("assets/icons/star.svg"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rate This",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),

                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0XFF51CF66),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          "${movie.metascoreRating}",
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Metascore",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "62 critic reviews",
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SafeArea(
              child: BackButton(
            color: Colors.black,
          )),
        ],
      ),
    );
  }
}
