import 'package:flutter/material.dart';

class MedList extends StatelessWidget{
late List <String> offers = [];
MedList(
    {required this.offers}
    );
  @override
  Widget build(BuildContext context) {
   return  Container(height: 50, width: MediaQuery.of(context).size.width ,
     margin: EdgeInsets.only(top: 5,left: 20 ),
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Colors.orange[100]),
     child:ListView.builder(
         itemCount: 10 ,
         scrollDirection: Axis.horizontal,
         itemBuilder: (ctx,index){
           return Container(margin: EdgeInsets.all(15),
             child: Text("${offers[index]}",style: TextStyle(fontWeight: FontWeight.bold),),);
         }) ,
   );
  }

}