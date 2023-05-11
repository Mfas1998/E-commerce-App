import 'package:flutter/material.dart';

class Payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        title:Row(children: [Icon(Icons.arrow_back_ios_new_sharp,color:Colors.black,),
        Text("Payment",style:TextStyle(color:Colors.black),),
        ],),
      ),
      body:Container(
        margin:EdgeInsets.only(top:20),
        child: Column(children: [
          Row(children: [Icon(Icons.credit_card,color:Colors.cyan,size:25,),
            Text("credit card or Debit",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold),)],),
          const SizedBox(height:15,),
          Row(children: [Icon(Icons.paypal,color:Colors.indigo,size:25,),
            Text("paypal",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold),)],),
          const SizedBox(height:15,),
          Row(children: [Icon(Icons.food_bank_outlined,color:Colors.cyan,size:25,),
            Text("Bank Transfer",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold),)],),

        ],),
      )
    );
  }

}