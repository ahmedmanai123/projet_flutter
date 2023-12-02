import 'package:flutter/material.dart';

class VediosPage extends StatelessWidget {
  //const VediosPage({super.key});
  List videoList=[
    "vedio salle d sport",
    "vedio salle d sport2",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: videoList.length,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
      itemBuilder: (context,index){
      return ListTile(
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: index ==0 ? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
            shape: BoxShape.circle,
        ),
        child:Icon(Icons.play_arrow_rounded,color: Colors.white,size: 30,) ,
      ),
      title: Text(videoList[index]),
        subtitle: Text("20 min 50 sec"),
      );
      }
    );
  }
}
