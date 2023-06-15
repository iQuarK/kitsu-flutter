import 'package:flutter/material.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime.dart';

class AnimeListItemWidget extends StatelessWidget {
  final KitsuAnime anime;
  const AnimeListItemWidget({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        Image.network(anime.posterImage.tiny),
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(anime.titles.en ??
              anime.titles.enJp ??
              anime.titles.jaJp ??
              "No title"),
        ))
      ]),
    );
  }
}
