import 'package:flutter/material.dart';
import 'package:projetflutter/pages/page_detaile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/global/params.dart';
import 'MyDrawer.dart';

class Home extends StatelessWidget {
  late SharedPreferences prefs;
  List catName=[
    "Category",
    "Classes",
    "Leader"
  ];
  List<Color> catColors=[
    Color(0xFFFFCF2F),
    Color(0xFF5FE08D),
    Color(0xFF61BDFD),
    Color(0xFFCB84FB),
  ];
  List<Icon>catIcons=[
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.category,color: Colors.white,size: 30,),
  ];
  List imgList=[
    "clear",
    "clear",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Page Home')),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
              padding:EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10) ,
              decoration: BoxDecoration(
                  color: Color(0xFF61BDFD),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
              ),
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Shaerch ...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                          )
                      ),
                    ),
                  )
                ],

              ),

            ),
            Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
              child: Column(children: [
                GridView.builder(
                  itemCount: catName.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context,index){
                    return Column(
                        children:[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[index],
                              shape: BoxShape.circle,

                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),Text(
                            catName[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.16),
                            ),
                          )
                        ]


                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sport",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("tous",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF674AEF),),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25)/(4*240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,

                  ),
                  itemBuilder:(context,index){
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(imgList[index]),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/${imgList[index]}.png",width: 100,height: 100,),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              imgList[index],style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6)
                            ),
                            )
                          ],
                        ),
                      ),
                    );
                  } ,
                )
              ],),
            )
          ],

        )
    );
  }

}