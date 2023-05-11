import 'package:flutter/material.dart';

class Success extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   centerTitle:true,
      //   backgroundColor:Colors.white,
      //   elevation:0.0,
      //   title:Text("Success",style:Theme.of(context).textTheme.headline1!.copyWith(color:Colors.grey),),
      // ),
      body:Container(
        child:Container(
          margin:EdgeInsets.only(top:175),
          //padding:const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(child: Icon(Icons.check_circle,size: 100,color:Colors.cyan,)),
              Text("Success",style:TextStyle(fontSize:40,fontWeight:FontWeight.bold),),
              SizedBox(height:20),
              Text("thank you for shopping using lafyuu",style:TextStyle(color:Colors.grey,fontSize:20),),
              SizedBox(height:20),
              MaterialButton(
                color:Colors.cyan,
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal:80),
                child:Text("Back to Order",
                    style:TextStyle(color:Colors.white,fontSize: 23,fontWeight:FontWeight.bold)),
                shape:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(0),
                    borderSide:BorderSide.none
                ),
                onPressed: () {  },
              )
            ],
          ),
        ),
      )
    );
  }
  
}