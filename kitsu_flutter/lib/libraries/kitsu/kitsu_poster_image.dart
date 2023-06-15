import 'package:kitsu_flutter/libraries/kitsu/kitsu_dimensions.dart';

class KitsuPosterImage {
  final String tiny;
  final String small;
  final String? medium;
  final String large;
  final String original;
  final KitsuPosterImageMeta meta;

  KitsuPosterImage(
      {required this.tiny,
      required this.small,
      this.medium,
      required this.large,
      required this.original,
      required this.meta});

  factory KitsuPosterImage.fromJson(Map<String, dynamic> json) =>
      KitsuPosterImage(
          tiny: json['tiny'],
          small: json['small'],
          medium: json['medium'],
          large: json['large'],
          original: json['original'],
          meta: KitsuPosterImageMeta.fromJson(json['meta']));
}

class KitsuPosterImageMeta {
  final KitsuDimensions dimensions;

  KitsuPosterImageMeta({required this.dimensions});

  factory KitsuPosterImageMeta.fromJson(Map<String, dynamic> json) {
    return KitsuPosterImageMeta(
        dimensions: KitsuDimensions.fromJson(json['dimensions']));
  }
}
