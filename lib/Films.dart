import 'package:flutter/material.dart';
import 'package:projet_test/CardFilm.dart';

class MyFilms extends StatefulWidget {
  const MyFilms({super.key});

  @override
  State<MyFilms> createState() => _MyFilmStateState();
}
class _MyFilmStateState extends State<MyFilms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cardfilm(title: 'House of Dead', image: 'HouseOfDead.jpg'),
            Cardfilm(title: 'Ice Road', image: 'iceroad.jpg'),
            Cardfilm(title: 'The Abyss', image: 'theabyss.jpg'),
            Cardfilm(title: 'The Grudge', image: 'thegrudge.jpg')
          ],
        ),
      ),
    );//Scaffold
  }
}