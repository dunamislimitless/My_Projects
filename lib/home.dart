import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#167A5C'),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
            
            
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width*0.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:12.0),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.white,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications),color: Colors.white,)
                  ],),
                  SizedBox(height: 15,),
                  //text rich,,,,,,,,
                  


                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                               Container(
                                 height: 50,
                                 width: MediaQuery.of(context).size.width*0.7,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                    borderRadius: BorderRadius.circular(3)
                                 ),
                                 child: Center(
                                   child: TextFormField(
                                     decoration: InputDecoration(
                                       border: InputBorder.none,
                                       hintText: 'Tracking no',
                                       hintStyle: TextStyle(
                                         color: Colors.grey
                                       )
                                     ),
                                   ),
                                 ),
                               ),//1
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: HexColor('#FFE8B2'),
                          borderRadius: BorderRadius.circular(6)
                        ),
                        width: MediaQuery.of(context).size.width*0.15,
                        child: Icon(Icons.search,size: 30,),
                      )//2
                    ],
                  )
                ],
              ),
            ),
          ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.white,
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width*0.5,
          ),)
        ]),
      ),
    );
  }
}