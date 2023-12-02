import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Text("Profitez d'un cadre agréable, des espaces aérés et climatisés, des équipements de pointe et des coachs qualifiés pour vous encadrer, vous motiver et vous soutenir. Galaxy Gym est une salle de sport et de fitness qui vous propose des cours variés dans un espace de Fitness destiné aux adultes, ados et enfants. Vous trouverez tous ce qu'il vous faut dans nos espaces de musculation et Cardio Training avec un matériel de qualité",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.7),
        ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 20,

        ),
        Row(
          children: [
            Icon(Icons.timer),
            SizedBox(width: 5,),
            Text("24 here",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
          ],
        ),
        Row(
          children: [
            Icon(Icons.star,color: Colors.amberAccent,),
            SizedBox(width: 5,),
            Text("4",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
          ],
        ),
      ],
    ),);
  }
}
