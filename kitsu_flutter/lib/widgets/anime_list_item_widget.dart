import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime.dart';
import 'package:kitsu_flutter/widgets/attribute_item_widget.dart';

class AnimeListItemWidget extends StatelessWidget {
  final KitsuAnime anime;
  const AnimeListItemWidget({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(anime.posterImage.tiny),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AttributeItemWidget(
                              name: 'Name',
                              value: anime.titles.en ??
                                  anime.titles.enJp ??
                                  anime.titles.jaJp ??
                                  "No title"),
                          AttributeItemWidget(
                              name: 'Average rating',
                              value: anime.averageRating),
                          AttributeItemWidget(
                              name: 'Start date',
                              value: DateFormat.yMMMd().format(DateTime.parse(anime.startDate))),
                          AttributeItemWidget(
                              name: 'End date',
                              value: DateFormat.yMMMd().format(DateTime.parse(anime.endDate)))
                        ])))
          ]),
    );
  }
}
