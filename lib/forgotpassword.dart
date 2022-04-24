import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E5E5E5'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                              height: 80,
                              width: 160,
                              child: Image(image: AssetImage('assets/images/logintop.png'))),
              ),
              SizedBox(height: 45,),
              Text('Forgot password? We got ya!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
               SizedBox(height: 30,),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child:Text('Please, enter your registered phone number or email to reset your password.',style: TextStyle(color: Colors.black,fontSize: 14),) ,
              ),
                SizedBox(
                  height: 40,
                ) ,
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
                                     hintText: 'Phone Number or Email',
                                     hintStyle: TextStyle(
                                       color: Colors.grey
                                     )
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 60,),
                        Container(
        
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration:  const BoxDecoration(color: Color.fromRGBO(26, 147, 111, 4), borderRadius: BorderRadius.all(Radius.circular(10))),
        child: MaterialButton(onPressed: (){
         
        }, child:const Text("RESET", style: TextStyle(color: Colors.white,fontSize: 14),) ),
          ),      
            ],
          ),
        ),
      ),
    );
  }
}