import 'package:delivaro/Products.dart';
import 'package:delivaro/medList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dominos extends StatelessWidget{
  List <String> offersList =[
    "Offers" , "Drinks" , "PizaHot" , "Coffey" , "Desirts" , "IceCoffy","Sweets",
    "PizaHot" , "Coffey" , "Water" ];

  List <dynamic> photoItem =["images/pizo1.jpg" ,
    "images/pizo2.jpg" ,"images/pizo3.jpg" ,
    "images/pizo4.jpg" ,
    "images/pizo5.jpg" ,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 60 ,
          width: 450 ,
          decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/photo.png"), fit: BoxFit.cover),),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.18),
                height: MediaQuery.of(context).size.height - 163,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.white ),
              child: Column(children: [ListTile(
                leading: Container( height: 40, width: 70,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(image:AssetImage("images/logo2.jpg") )
                ),),
                title: Text("Domains", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text("Amircan Resturn,Uniqe Mails"),
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
              Container( margin: EdgeInsets.fromLTRB(10, 3, 10,1) ,height: 60, width: 350,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange[700],),
              child: Column(
                children: [
                  Text("30% Off",
                    style: TextStyle(color:Colors.white, fontSize: 15 , fontWeight: FontWeight.bold),),
                  Text("Tow mealis free of oder",
                    style: TextStyle(color:Colors.white, fontSize: 15 , fontWeight: FontWeight.bold),),
                ],
              ),
              ),
                Container(child: MedList(offers: offersList) ,),
                Container( height: 83,
                  child: Products(photoItem: photoItem,),),
              ],),
              ),
            ],),
        ),),
    );

  }

}