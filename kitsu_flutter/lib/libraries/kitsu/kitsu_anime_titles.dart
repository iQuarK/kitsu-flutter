class KitsuAnimeTitles {
  final List<KitsuAnimeTitle> titles;

  KitsuAnimeTitles({required this.titles});

  factory KitsuAnimeTitles.fromJson(List<Map<String, dynamic>> json) =>
      KitsuAnimeTitles(
          titles: json
              .map((element) => KitsuAnimeTitle.fromJson(element))
              .toList());
}

class KitsuAnimeTitle {
  final String? en;
  final String? enJp;
  final String? jaJp;
  KitsuAnimeTitle({this.en, this.enJp, this.jaJp});

  factory KitsuAnimeTitle.fromJson(Map<String, dynamic> json) {
    return KitsuAnimeTitle(
        en: json["en"], enJp: json["en_jp"], jaJp: json["ja_jp"]);
  }
}
