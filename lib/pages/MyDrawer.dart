import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../config/global/params.dart';

class MyDrawer extends StatelessWidget {
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.white,
                      Colors.blue])),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(""),
                    radius: 80,
                  ),
                )),
            //Parcourir les différents éléments du menu
            ...(GlobalParams.menus as List).map((item){
              return ListTile(
                title: Text('${item['title']}', style: TextStyle(fontSize:
                22),),
                leading: item['icon'],
                trailing: Icon(Icons.arrow_right,color:Colors.blue,),
                onTap: () async{
                  if('${item['title']}'!="Déconnexion") {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, "${item['route']}");
                  }
                  else
                  {
                    prefs = await SharedPreferences.getInstance();
                    prefs.setBool("connecte", false);

                    Navigator.of(context).pushNamedAndRemoveUntil('/authentication',
                            (Route<dynamic> route) => false);
                  }
                },
              );
            })
          ],
        ));
  }
}