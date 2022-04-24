import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PageTwo extends StatelessWidget {
  const PageTwo ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 147, 111, 4),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.6,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      right: 0,
                      left:0,
                      child:Center(
                      child: Container(
                        height: 56,
                        width: 100,
                        child: Image(image: AssetImage('assets/images/logintop.png'))),
                    ) ),
                    Positioned(
                      top: 75,
                      right: 0,
                      left: 0,
                      // bottom: ,
                      child: Container(
                        child: Center(
                          child: Text('VFX LOGISTICS',style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white)),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      right: 0,
                      left: 0,
                      child:Center(
                      child: Container(
                        height: 500,
                        width: 500,
                  child: Image(image: AssetImage('assets/images/im1.png'))),
                    ),)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                 height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: HexColor('#FAFAFA'),

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                       Container(child: Text('Welcome Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                       SizedBox(
                         height: 10,
                       ),
      
                       //Username or phone number
                       Container(
                         height: 50,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                           color: Colors.white
                         ),
                         child: Center(
                           child: TextFormField(
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: 'Username or Phone number',
                                hintStyle: TextStyle(
                                 color: Colors.grey
                               )
                             ),
                           ),
                         ),
                       ),
                       SizedBox(height: 15,),
                             Container(
                               height: 50,
                               width: MediaQuery.of(context).size.width,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)
                               ),
                               child: Center(
                                 child: TextFormField(
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: 'Password',
                                     hintStyle: TextStyle(
                                       color: Colors.grey
                                     )
                                   ),
                                 ),
                               ),
                             ),
                       //button forgot password ang sign up
                       SizedBox(height: 15,),
                       Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                           InkWell(
                             onTap: (){
                               Navigator.pushNamed(context, '/forgotpassword');
                             },
                             child: Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.bold),),
                           ),
                           InkWell(
                             onTap: (){},
                             child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,color: HexColor('#1A936F')),),
                           )
                         ],),
                       ),
                       SizedBox(height: 25,),
                        Container(
        
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration:  const BoxDecoration(color: Color.fromRGBO(26, 147, 111, 4), borderRadius: BorderRadius.all(Radius.circular(10))),
        child: MaterialButton(onPressed: (){
         Navigator.pushNamed(context, '/home');
        }, child:const Text("LOGIN", style: TextStyle(color: Colors.white,fontSize: 14),) ),
          ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}