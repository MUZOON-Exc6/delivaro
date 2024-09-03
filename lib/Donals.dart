import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Products.dart';
import 'medList.dart';

class Donals extends StatelessWidget{
  List <String> offersList =[
    "Offers" , "Drinks" , "Burgerr" , "Coffey" , "Desirts" , "IceCoffy","Sweets",
    "PizaHot" , "Coffey" , "Water" ];
  List <dynamic> photoItem =["images/burg1.jpg" ,
    "images/burg2.jpg" ,"images/burg3.jpg" ,
    "images/burg4.jpg" ,
    "images/burg5.jpg" ,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
    child: Container(
    height: MediaQuery.of(context).size.height,
    width: 450 ,
    decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/ph.png"), fit: BoxFit.cover),),
    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
    height: MediaQuery.of(context).size.height - 125,
    width: 400,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: Colors.white ),
    child: Column(children: [ListTile(
    leading: Container( height: 40, width: 70,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    image: DecorationImage(image:AssetImage("images/mac.jpg") )
    ),),
    title: Text("MC Donald's", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    subtitle: Text("Britsh Resturn,Uniqe Mails"),
    trailing: Icon(Icons.favorite,color: Colors.orange[700],),) ,
    Container(
    margin: EdgeInsets.all(5),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [Text("Welcom to new Resturnt"),
    Row(children: [Icon(Icons.star, color:Colors.orange[700] ,) ,
    Text("4.9 - Followers")],) ,
    Row(children: [Icon(Icons.location_on_outlined, color:Colors.orange[700] ,) ,
    Text("Newyourk City")],)
    ],),
    ),
    //SizedBox(height: 10,),
    Container(child: MedList(offers: offersList) ,),
    Expanded(flex: 1,
        child: Container( height: 150, child: Products(photoItem: photoItem,),)),
    ],),
    ),
    ],),
    ),),
    );
  }

}