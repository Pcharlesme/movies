import 'package:flutter/material.dart';
import 'package:moviesapp/models/movies.dart';

import '../../../constants.dart';
import '../../home/homescreen.dart';

class TitleDurationAndElevBtn extends StatelessWidget {
  const TitleDurationAndElevBtn({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "${movie.year}",
                      style: const TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "2h 32mins",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Color.fromARGB(255, 214, 15, 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
