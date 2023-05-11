import 'package:flutter/material.dart';

class ShipTo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        title:Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,

          children: [

            Icon(Icons.arrow_back_ios_new_sharp,color:Colors.cyan,size:40,),
            Text("Ship To",style:TextStyle(color:Colors.black,fontSize:25),),
            Icon(Icons.add,color:Colors.cyan,size:40,)
          ],

        ),
      ),
      body:Container(
        color:Colors.white,
        width:double.infinity,
        child:Column(
          children: [
            Container(
         decoration:BoxDecoration(
           border:Border.all(color:Colors.cyan,width:1.5)
),
              height:200,
              width:400,
              margin:EdgeInsets.only(right:20,top:25,left:8),
              padding: EdgeInsets.only(right:40,top:15,left:10),
              //color:Colors.cyan,
              child:Column(
                children: [
                  Text("priscekila",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),

                  Text("3711 Spring Hill Rd undefined Tallahassee,\n Nevada 52874 United States\n\n +9912345678990",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color:Colors.grey),),
                  SizedBox(height:15),

                  Row(
                    children: [
                      MaterialButton(

                        color:Colors.cyan,
                          child:Text("Edit"),
                          onPressed: (){}),
                      Icon(Icons.delete_outline_rounded,color:Colors.grey,size:35,)
                    ],
                  ),

                ],
              ),
              
            ),

            Container(
              decoration:BoxDecoration(
                  border:Border.all(color:Colors.black12,width:2)
              ),
              height:190,
              width:400,
              margin:EdgeInsets.only(right:20,top:25,left:8),
              padding: EdgeInsets.only(right:40,top:15,left:10),
              //color:Colors.cyan,
              child:Column(
                children: [
                  Text("Ahmad khaidir",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),

                  Text("3711 Spring Hill Rd undefined Tallahassee,\n Nevada 52874 United States\n\n +9912345678990",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color:Colors.grey),),
                  SizedBox(height:15),

                  Row(
                    children: [
                      MaterialButton(

                          color:Colors.cyan,
                          child:Text("Edit"),
                          onPressed: (){}),
                      Icon(Icons.delete_outline_rounded,color:Colors.grey,size:35,)
                    ],
                  ),

                ],
              ),

            ),
            const SizedBox(height: 90,),
            MaterialButton(
                color:Colors.cyan,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal:130),
                child:Text("Next")

                 ,
                onPressed: (){})
            //Text("Nike Air Zoom pegasus"),
            //Icon(Icons.heart_broken_sharp),
            // Icon(Icons.favorite,color:Colors.red,),

          ],
        )
      ),
    );
  }
  
}