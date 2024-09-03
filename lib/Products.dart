import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget{
 late List <dynamic> photoItem ;
  List <String> text = [
    "Hut Firize Dominos", "Choclate Drinks",
    "Limonate Drinks" , "Oranges Drinks" ,
    "Strobarry Drinks",
  ];
  Products(
 {required this.photoItem }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    ListView.builder(
      scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (ctx,index){
      return Container(
        height: 83, width: 355,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.white, boxShadow: [BoxShadow(color:Colors.black.withOpacity(0.2),
              offset: Offset(5,4) , spreadRadius:1 , blurRadius: 3)],),
        margin: EdgeInsets.only(left: 20, top: 15,),
        padding: EdgeInsets.all(5),
        child: Row(children: [Container(width: 70, height: 55,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(image: DecorationImage(image:AssetImage('${photoItem[index]}'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),)
        ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Item Name",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
              Text("'${text[index]}'"),
              Text("55.5",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)],) ,
          Spacer(),
          Column(children: [Icon(Icons.favorite_outline),SizedBox(height: 10,),Icon(Icons.add)],)],),
      );
    })
      ,);
  }

}