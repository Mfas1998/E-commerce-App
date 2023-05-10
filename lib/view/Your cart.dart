import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/custom_appBar.dart';

class YourCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: 'Your Cart', icon: Icons.add_circle),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/b.jpg",
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Nike Air Zoom pegasus\n 36 Miami",
                      style: TextStyle(fontSize: 19),
                    ),
                    //Icon(Icons.heart_broken_sharp),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Icon(Icons.delete_outline_rounded),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/b.jpg",
                            width: 80,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Nike Air Zoom pegasus\n 36 Miami",
                      style: TextStyle(fontSize: 19),
                    ),
                    //Icon(Icons.heart_broken_sharp),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Icon(Icons.delete_outline_rounded),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 2.3))),
                      )
                    ],
                  )),

              Container(
                margin: EdgeInsets.only(right: 200),
                child: Text(
                  "* Your Cupon is Not Correct",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Container(
              //    padding:EdgeInsets.only(bottom:20),
              //    child:TextFormField(
              //      decoration:InputDecoration(
              //       // prefixIcon:Icon(Icons.visibility_off,color:Color(0xFF7165CA),textDirection:TextDirection.ltr),
              //        hintText:("ادخل كلمة المرور"),
              //       // hintStyle:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:24,),
              //        hintTextDirection:TextDirection.rtl,
              //        //filled:true,fillColor:Color(0xFFBAB1CE),
              //        contentPadding:EdgeInsets.symmetric(vertical:1),
              //
              //        border:OutlineInputBorder(
              //            borderRadius:BorderRadius.circular(10)
              //        ),
              //      ),
              //    ),
              //  ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Colors.black12, width: 2)),
                width: 380,
                height: 160,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "items(3)",
                          style: TextStyle(color: Colors.black26, fontSize: 18),
                        ),
                        Text("\$598.86",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Shipping",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 18)),
                        Text("\$40.00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("lmport charges",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 18)),
                        Text("\$128.00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Total price",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("\$766.86",
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: MaterialButton(
                    child: Text(
                      "check Out",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.cyan,
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                    onPressed: () {}),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home_filled, color: Colors.black26),
                  Icon(Icons.search, color: Colors.black26),
                  Icon(Icons.shopping_cart_rounded, color: Colors.black26),
                  Icon(Icons.local_offer_sharp, color: Colors.black26),
                  Icon(Icons.account_circle_rounded, color: Colors.black26),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text("Explore",
                      style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("cart",
                      style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("Offer",
                      style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("Account",
                      style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              )
            ],
          ),
        ));
  }
}
