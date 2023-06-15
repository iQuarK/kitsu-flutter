import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime_rating_frequencies.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime_titles.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_enums.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_poster_image.dart';

class KitsuAnime {
  final String createdAt;
  final String updatedAt;
  final String slug;
  final String synopsis;
  final int coverImageTopOffset;
  final KitsuAnimeTitle titles;
  final String canonicalTitle;
  final List<String> abbreviatedTitles;
  final String averageRating;
  final KitsuAnimeRatingFrequencies ratingFrequencies;
  final int userCount;
  final int favoritesCount;
  final String startDate;
  final String endDate;
  final int popularityRank;
  final int ratingRank;
  final KitsuAgeRating ageRating;
  final String ageRatingGuide;
  final KitsuSubtype subtype;
  final KitsuStatus status;
  final String tba;
  final KitsuPosterImage posterImage;
  final KitsuPosterImage? coverImage;
  final int? episodeCount;
  final int? episodeLength;
  final String? youtubeVideoId;
  final bool nsfw;

  KitsuAnime(
      {required this.createdAt,
      required this.updatedAt,
      required this.slug,
      required this.synopsis,
      required this.coverImageTopOffset,
      required this.titles,
      required this.canonicalTitle,
      required this.abbreviatedTitles,
      required this.averageRating,
      required this.ratingFrequencies,
      required this.userCount,
      required this.favoritesCount,
      required this.startDate,
      required this.endDate,
      required this.popularityRank,
      required this.ratingRank,
      required this.ageRating,
      required this.ageRatingGuide,
      required this.subtype,
      required this.status,
      required this.tba,
      required this.posterImage,
      this.coverImage,
      this.episodeCount,
      this.episodeLength,
      this.youtubeVideoId,
      required this.nsfw});

  factory KitsuAnime.fromJson(Map<String, dynamic> json) {
    var attributes = json['attributes'];

    return KitsuAnime(
        createdAt: attributes['createdAt'],
        updatedAt: attributes['updatedAt'],
        slug: attributes['slug'],
        synopsis: attributes['synopsis'],
        coverImageTopOffset: attributes['coverImageTopOffset'],
        titles: KitsuAnimeTitle.fromJson(attributes['titles']),
        canonicalTitle: attributes['canonicalTitle'],
        abbreviatedTitles: (attributes['abbreviatedTitles'] as List)
            .map((item) => item as String)
            .toList(),
        averageRating: attributes['averageRating'],
        ratingFrequencies: KitsuAnimeRatingFrequencies.fromJson(
            attributes['ratingFrequencies']),
        userCount: attributes['userCount'],
        favoritesCount: attributes['favoritesCount'],
        startDate: attributes['startDate'],
        endDate: attributes['endDate'],
        popularityRank: attributes['popularityRank'],
        ratingRank: attributes['ratingRank'],
        ageRating: KitsuAgeRating.values.firstWhere(
            (e) => e.toString() == 'KitsuAgeRating.${attributes['ageRating']}'),
        ageRatingGuide: attributes['ageRatingGuide'],
        subtype: KitsuSubtype.values.firstWhere(
            (e) => e.toString() == 'KitsuSubtype.${attributes['subtype']}'),
        status: KitsuStatus.values.firstWhere(
            (e) => e.toString() == 'KitsuStatus.${attributes['status']}'),
        tba: attributes['tba'] ?? "",
        posterImage: KitsuPosterImage.fromJson(attributes['posterImage']),
        coverImage: attributes['coverImage'] != null
            ? KitsuPosterImage.fromJson(attributes['coverImage'])
            : null,
        episodeCount: attributes['episodeCount'],
        episodeLength: attributes['episodeLength'],
        youtubeVideoId: attributes['youtubeVideoId'],
        nsfw: attributes['nsfw']);
  }
}
