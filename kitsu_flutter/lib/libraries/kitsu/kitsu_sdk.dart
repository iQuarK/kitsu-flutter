import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime.dart';

class KitsuSDK {
  Future<List<KitsuAnime>>? getAnimes() async {
    try {
      final response =
          await http.get(Uri.parse('https://kitsu.io/api/edge/anime'));

      if (response.statusCode == 200) {
        List<KitsuAnime> list = [];

        jsonDecode(response.body)["data"]
            .forEach((item) => list.add(KitsuAnime.fromJson(item)));
        return list;
      } else {
        throw Exception('Failed to load animes');
      }
    } catch (e) {
      if (kDebugMode) {
        print("Exception: $e");
      }
      return [];
    }
  }
}
