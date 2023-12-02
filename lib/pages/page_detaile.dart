import 'package:flutter/material.dart';

import '../widgets/description_page.dart';
import '../widgets/vedios_page.dart';

class DetailPage extends StatefulWidget {
  String img;
  DetailPage(this.img);


  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isVideosSection=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,


          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10),child: Icon(
            Icons.notification_important_sharp,size: 28,
          ),)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                )
              ),
               child: Center(
                 child: Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                   ),
                   child: Icon(
                     Icons.play_arrow_rounded,color: Color(0xFF674AEF),
                     size: 45,

                   ),
                 ),
               ),
            ),
            SizedBox(height: 15,),
            Text("${widget.img}vedio Salle",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color:isVideosSection? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection=true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: Text("Videos",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,

                        ),),

                      ),
                    ),
                  ),Material(
                    color:isVideosSection? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection=false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: Text("Desceiption",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,

                        ),),

                      ),
                    ),
                  )
                ],
              ),
            ) ,
           SizedBox(
             height:10 ,
           ),
            isVideosSection ? VediosPage():DescriptionPage()
          ],
        ),
      ),
    );
  }
}
