import 'package:flutter/material.dart';
import 'package:projet_test/FilmDetails.dart';

class Cardfilm extends StatelessWidget {
  final String title;
  final String image;

  const Cardfilm({super.key, required this.title, required this.image});

  // description et le prix selon le film
  Map<String, dynamic> _getFilmDetails(String filmTitle) {
    switch (filmTitle) {
      case 'House of Dead':
        return {
          'description': 'Un film d\'horreur captivant qui vous tiendra en haleine jusqu\'à la fin.'
              ' Plongez dans l\'univers terrifiant de House of Dead.',
          'price': 12.99,
        };
      case 'Ice Road':
        return {
          'description': 'Un thriller palpitant sur une route de glace dangereuse.'
              ' Liam Neeson dans un rôle intense qui vous fera frissonner.',
          'price': 14.99,
        };
      case 'The Abyss':
        return {
          'description': 'Un chef-d\'œuvre de science-fiction de James Cameron. '
              'Une aventure sous-marine extraordinaire avec des effets spéciaux révolutionnaires.',
          'price': 16.99,
        };
      case 'The Grudge':
        return {
          'description': 'Un film d\'horreur japonais terrifiant. '
              'L\'histoire d\'une malédiction qui hante une maison et ses habitants.',
          'price': 13.99,
        };
      default:
        return {
          'description': 'Un film captivant à découvrir.',
          'price': 10.99,
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    final filmDetails = _getFilmDetails(title);
    
    return Card(
      elevation: 6,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FilmdetailsPage(
                title: title,
                image: image,
                description: filmDetails['description'],
                price: filmDetails['price'],
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/$image',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      size: 28,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}