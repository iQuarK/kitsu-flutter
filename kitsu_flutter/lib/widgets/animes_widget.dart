import 'package:flutter/material.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime.dart';
import 'package:kitsu_flutter/widgets/anime_list_item_widget.dart';

class AnimesWidget extends StatefulWidget {
  final List<KitsuAnime>? animes;

  const AnimesWidget({super.key, this.animes});

  @override
  State<AnimesWidget> createState() => _AnimesWidgetState();
}

class _AnimesWidgetState extends State<AnimesWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: (widget.animes as List<KitsuAnime>)
          .map((anime) => AnimeListItemWidget(anime: anime)).toList(),
    );
  }
}
