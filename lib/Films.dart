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
      appBar: AppBar(
        title: const Text('Nos Films'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Découvrez notre collection',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Cardfilm(title: 'House of Dead', image: 'HouseOfDead.jpg'),
              const SizedBox(height: 16),
              Cardfilm(title: 'Ice Road', image: 'iceroad.jpg'),
              const SizedBox(height: 16),
              Cardfilm(title: 'The Abyss', image: 'theabyss.jpg'),
              const SizedBox(height: 16),
              Cardfilm(title: 'The Grudge', image: 'thegrudge.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}