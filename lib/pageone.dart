import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class PageOne extends StatelessWidget {
  const PageOne ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  HexColor("#E5E5E5"),
      body:  
        
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
           const SizedBox(height: 60,),
           const Image(image: AssetImage("assets/images/logintop.png"), height: 180, width: 180,),

const Text("Create an Account", style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'montserat' , fontSize: 18),)
,Container(
  margin:const  EdgeInsets.symmetric(horizontal: 40),
  child: 
  //first name text field
   
    const TextField(decoration: InputDecoration( 
      hintText: "Full Name" ,hintStyle: TextStyle(color: Colors.grey),  )
//{ this is used for ading icon styling 
 //  const TextField(decoration: InputDecoration( icon: Icon(Icons.lock),
 //   hintText: "Full Name" ,hintStyle: TextStyle(color: Colors.grey),  )
//}
      //label: Text('Full name') the label remains even when typing starts
  ),
   
  ),
        Container(
  margin:const  EdgeInsets.symmetric(horizontal: 40),
  child: 
  //first name text field
   const TextField(decoration: InputDecoration(
    hintText: "Email " ,hintStyle: TextStyle(color: Colors.grey),  )

    //label: Text('Full name') the label remains even when typing starts
  ),
  ),  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:  [ Container(child: Image(image: AssetImage("assets/images/flag.png"), width: 30, height: 30,),), 
     Container(
  width: 268,
  child: 
  //choose country
   const TextField(decoration: InputDecoration( 
    hintText: "Phone Number " ,hintStyle: TextStyle(color: Colors.grey),  )

    //label: Text('Full name') the label remains even when typing starts
  ),
  ),  
    
    ],
    
  ),
   Container(
  margin:const  EdgeInsets.symmetric(horizontal: 40),
  child: 
  //choose country
   const TextField(decoration: InputDecoration(
    hintText: "Password " ,hintStyle: TextStyle(color: Colors.grey),  )

    //label: Text('Full name') the label remains even when typing starts
  ),
  ),  

 Container(
  margin:const  EdgeInsets.symmetric(horizontal: 40),
  child: 
   const TextField(decoration: InputDecoration(
    hintText: "Create Password " ,hintStyle: TextStyle(color: Colors.grey),  )
   ),),

 
  // create button

  SizedBox(
    height: 30,
  ),
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration:  const BoxDecoration(color: Color.fromRGBO(26, 147, 111, 4), borderRadius: BorderRadius.all(Radius.circular(10))),
      child: MaterialButton(onPressed: (){
        Navigator.pushNamed(context, '/pagetwo');
      }, child:const Text("CREATE", style: TextStyle(color: Colors.white),) ),
    ),
  ),
  SizedBox(
    height: 25,
  ),
  Center(
    child: Container(
      child: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('   Already have an account? '),
            InkWell(
              child: Text('Sign in ',style: TextStyle(
                color: HexColor('#E5E5E5'),
              ),),
            )
          ],
        )
      ),
    ),
  )
//const Text("Already have an Account", style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'montserat' , fontSize: 18),)
//,Container(
 // margin:const  EdgeInsets.symmetric(horizontal: 40)
  ],),
    );
  }
}