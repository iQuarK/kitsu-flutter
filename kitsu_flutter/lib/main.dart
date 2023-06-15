import 'package:flutter/material.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_anime.dart';
import 'package:kitsu_flutter/libraries/kitsu/kitsu_sdk.dart';
import 'package:kitsu_flutter/widgets/animes_widget.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(body: Center(child: MyApp()))));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var kitsuSDK = KitsuSDK();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<KitsuAnime>>(
        future: kitsuSDK.getAnimes(),
        builder: (context, AsyncSnapshot<List<KitsuAnime>> snapshot) {
          if (snapshot.hasData) {
            return AnimesWidget(animes: snapshot.data);
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
