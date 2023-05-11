import 'package:flutter/material.dart';

class ChooseCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor:Colors.white,
      title:Row(
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.arrow_back_ios_new_sharp,color:Colors.cyan,),
          Text("Choose Card",style: TextStyle(color:Colors.black ),),
          Icon(Icons.add,color:Colors.cyan,),

        ],
      ),
    ),

body:Container(
  child: Column(children: [
    Container(
      padding:EdgeInsets.only(left:15,top:75),
      margin:EdgeInsets.only(left:15,right:15,top:20),
      color:Color(0XFF3FBFFE),
      width:double.infinity,
      height:180,
      child: Column(children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            Text("6326",style:TextStyle(fontSize:22,color:Colors.white),),
            Text("9124",style:TextStyle(fontSize:20,color:Colors.white),),
            Text("8124",style:TextStyle(fontSize:20,color:Colors.white),),
            Text("8975",style:TextStyle(fontSize:20,color:Colors.white),),
          ],),
        const SizedBox(height:18,),
        Row(children: [
          Text("CARD HOLDER     CARD SAVE",style: TextStyle(color:Colors.white60,fontSize:17),),
          //Text("CARD SAVE",style: TextStyle(color:Colors.grey,fontSize: 20),),
      ],),
        Row(children: [
          Text("Dominic Ovo        19/2042",style:TextStyle(fontSize:17),),
         // Text("19/2042",style:TextStyle(fontSize:20),),
        ],)
      ],),
    ),
    // Row(
    //   mainAxisAlignment:MainAxisAlignment.center,
    //   children: [
    //     ...List.generate(onBordinglist.length, (index) => AnimatedContainer(
    //       margin:const  EdgeInsets.only(right: 5),
    //       duration:const  Duration(milliseconds:900),
    //       width:controller.currentpage==index?20:5,
    //       height: 7,
    //       decoration:BoxDecoration(
    //           color:Colors.cyan,
    //           borderRadius:BorderRadius.circular(10)),
    //     ))],),
    const SizedBox(height: 350,),
    MaterialButton(
        color:Colors.cyan,
        child:Text("pay \$766.86"),
        padding:EdgeInsets.symmetric(vertical:10,horizontal:120),
        onPressed: (){})

  ],),
)


  );
  }

}