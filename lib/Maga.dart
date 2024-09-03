import 'package:delivaro/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mage extends StatelessWidget{
  List <dynamic> photoItem =["images/mac.jpg" ,
    "images/logo2.jpg" ,"images/logo3.jpg" ,
    "images/logo4.jpg" ,"images/pizo5.jpg" ,
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(height: MediaQuery.of(context).size.height -2,
          width:  MediaQuery.of(context).size.width ,
          color: Colors.pinkAccent[100],
          child:Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Row(children: [Container(margin: EdgeInsets.only(left: 10 ,top: 3),
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Icon(Icons.arrow_back_ios,color: Colors.white,),
                  SizedBox(height: 10),
                  Text("Mage deal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                    Text("Git Mage Meal Fast",style: TextStyle(color: Colors.white))],),
              ), Spacer(),
                Container(height: 120, width: 200,
                child:Image.asset("images/bitza.png"),
                )],),
                Container(
                  width: 450, height: MediaQuery.of(context).size.height -121,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white ),
                child: Column(children: [Container( margin: EdgeInsets.fromLTRB(10, 10, 10,1) ,height: 60, width: 360,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange[700],),
                  child: Row(children: [Icon(Icons.add_circle, color: Colors.white,),
                    Text("Compagain info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(width: 90,),Text("Click to back",style: TextStyle(color: Colors.white)),
                    SizedBox(width: 10,),Icon(Icons.arrow_forward,color: Colors.white,)],),
                ),
                  Expanded(flex: 1,
                    child: Container(height: 100,
                      child: Products(photoItem: photoItem,),),
                  )],),
                ),

                ],),
          ) ,
        ),
      ),
    );
  }

}