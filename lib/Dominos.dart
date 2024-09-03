import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dominos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 10 ,
          width: 400 ,
          decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/photo.png"), fit: BoxFit.cover),),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.20),
                height: MediaQuery.of(context).size.height - 165,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.white ),
              child: Column(children: [ListTile(
                leading: Container( height: 40, width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(image:AssetImage("images/logo2.jpg") )
                ),),
                title: Text("Domains", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                subtitle: Text("Amircan Resturn,Uniqe Mails"),
                trailing: Icon(Icons.favorite,color: Colors.orange[700],),) ,
              Container(
                margin: EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Welcom to new Resturnt"),
                  Row(children: [Icon(Icons.star, color:Colors.orange[700] ,) ,
                    Text("4.9 - Followers")],) ,
                  Row(children: [Icon(Icons.location_on_outlined, color:Colors.orange[700] ,) ,
                    Text("Newyourk City")],)
                ],),
              ),
              //SizedBox(height: 10,),
              Container( margin: EdgeInsets.fromLTRB(10, 5, 10, 10) ,height: 70, width: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange[700],),
              child: Center(child: Text("30% Off \n Tow mealis free of oder",
                style: TextStyle(color:Colors.white, fontSize: 15 , fontWeight: FontWeight.bold),)),
              ),
                Container(height: 50, width: MediaQuery.of(context).size.width ,
                margin: EdgeInsets.only(top: 5,left: 10 ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.orangeAccent[100]),
                  child:ListView.builder(
                      itemCount: 10 ,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx,index){
                        return Container(margin: EdgeInsets.all(15),
                          child: Text("Offers",style: TextStyle(fontWeight: FontWeight.bold),),);
                  }) ,
                ),
              ],),
              ),
            ],),
        ),),
    );

  }

}