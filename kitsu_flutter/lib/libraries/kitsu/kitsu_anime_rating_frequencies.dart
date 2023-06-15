class KitsuAnimeRatingFrequencies {
  final String rating2;
  final String rating3;
  final String rating4;
  final String rating5;
  final String rating6;
  final String rating7;
  final String rating8;
  final String rating9;
  final String rating10;
  final String rating11;
  final String rating12;
  final String rating13;
  final String rating14;
  final String rating15;
  final String rating16;
  final String rating17;
  final String rating18;
  final String rating19;
  final String rating20;

  KitsuAnimeRatingFrequencies({
    required this.rating2,
    required this.rating3,
    required this.rating4,
    required this.rating5,
    required this.rating6,
    required this.rating7,
    required this.rating8,
    required this.rating9,
    required this.rating10,
    required this.rating11,
    required this.rating12,
    required this.rating13,
    required this.rating14,
    required this.rating15,
    required this.rating16,
    required this.rating17,
    required this.rating18,
    required this.rating19,
    required this.rating20,
  });

  factory KitsuAnimeRatingFrequencies.fromJson(Map<String, dynamic> json) {
    return KitsuAnimeRatingFrequencies(
      rating2: json["2"],
      rating3: json["3"],
      rating4: json["4"],
      rating5: json["5"],
      rating6: json["6"],
      rating7: json["7"],
      rating8: json["8"],
      rating9: json["9"],
      rating10: json["10"],
      rating11: json["11"],
      rating12: json["12"],
      rating13: json["13"],
      rating14: json["14"],
      rating15: json["15"],
      rating16: json["16"],
      rating17: json["17"],
      rating18: json["18"],
      rating19: json["19"],
      rating20: json["20"],
    );
  }
}
