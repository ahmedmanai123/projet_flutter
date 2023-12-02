import 'package:flutter/material.dart';

class GlobalParams {



  static List<Map<String,dynamic>>menus=[

    {"title":"Accueil","icon":Icon(Icons.home,color:Colors.grey,),"route":"/home"},
    {"title":"salle de sport","icon":Icon(Icons.sunny_snowing,color:Colors.blue,),
      "route":"/meteo"},
    {"title":"calendar","icon":Icon(Icons.calendar_month_outlined,color:Colors.blue,),
      "route":"/gallerie"},
    {"title":"Paramètres","icon":Icon(Icons.settings,color:Colors.blue,),
      "route":"/parametres"},
    {"title":"Déconnexion","icon":Icon(Icons.logout,color:Colors.blue,), "route":"/authentification"},

  ];
}