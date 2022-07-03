// the movie model
class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.criticsReview,
    required this.metascoreRating,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.cast,
  });
}

// the data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Bloodshot",
    year: 2020,
    poster: "assets/images/poster_1.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Editor",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/act4.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "After V 4 ",
    year: 2020,
    poster: "assets/images/poster_4.jpg",
    backdrop: "assets/images/poster_4.jpg",
    numOfRatings: 161212,
    rating: 9.2,
    criticsReview: 40,
    metascoreRating: 73,
    genra: [
      "Action",
      "Biography",
      "Drama",
      "Love",
    ],
    plot: plotText,
    cast: [
      {
        "orginalName": "Emma Pcharles",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Charles Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Chris Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/act3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/act4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Archer V Pcharles ",
    year: 2019,
    poster: "assets/images/poster_5.jpg",
    backdrop: "assets/images/poster_5.jpg",
    numOfRatings: 130212,
    rating: 8.1,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Kent Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Spider Man ",
    year: 2021,
    poster: "assets/images/poster_6.png",
    backdrop: "assets/images/backdrop_6.png",
    numOfRatings: 15212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/act1.jpg",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/act2.jpg",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/act3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/act4.png",
      },
    ],
  ),
  Movie(
    id: 1,
    title: "Onward",
    year: 2020,
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/act2.jpg",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/act1.jpg",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/act3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/act4.png",
      },
    ],
  ),
];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";
