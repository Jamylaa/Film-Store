import 'package:flutter/material.dart';
import '';

class Cardfilm extends StatelessWidget {
  final String title;
  final String image;

  const Cardfilm ({super.key,required this.title,required this.image});

  //Aspect graphhique
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('assets/$image',width:double.infinity,height:200,),
            Padding(padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$title',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Icon(Icons.star,size: 28,color: Colors.amberAccent,)
              ],
            ),
            ),
          ],//children
        ),//Column
       )//PAdding
    );// Card
  }
}