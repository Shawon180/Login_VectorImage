import 'dart:ui';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffecf0f1),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color:Color(0xffFC267C),

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular( 16.0)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(20)),
                  Text('Evenie.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),)
                ],
              ),
            ),

            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
Image.asset('images/log.png'),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Container(
                          width: 300,

                          child: TextField(
                           controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(

                              ),

                              prefixIcon: Icon(Icons.email_outlined,color: Color(0xffFC267C),),
                              labelText: 'Emial',
                            ),
                            autofocus: true,
                          ),

                        ),
SizedBox(height: 20,),
                        Container(
                          width: 300,

                          child: TextField(

                          controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock_outline,color: Color(0xffFC267C),),
                              labelText: 'Password',


                            ),
                          ),
                        ),

SizedBox(
  height: 20,
),
                  Container(
                      decoration: BoxDecoration(

                        border:  Border.all(width: 2.0,color:Color(0xffFC267C) ),
                          borderRadius: BorderRadius.circular(
                          16
                          ),
                      ),

                              width: 200,

                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  TextButton(onPressed: (){}, child: Row(children: [
                                    Icon(Icons.person,color:Color(0xffFC267C)),
                                    Text('Login',style: TextStyle(color:Color(0xffFC267C),fontWeight:FontWeight.bold,fontSize: 18 ),),

                                  ],))

                                ],
                              )
                          ),

Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Container(
         child:  TextButton(onPressed: (){}, child: Row(children: [
           Icon(Icons.facebook_outlined,color:Color(0xff4267B2),size: 40,),


         ],)),
       ),



       Container(
         child:  TextButton(onPressed: (){}, child: Row(children: [
           Icon(Icons.email,color:Colors.redAccent,size: 40,),


         ],)),
       ),
   ],
  ),
)

                      ],
                    ),
                  ),


                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?',style: TextStyle(fontSize: 16 ),),
                    TextButton(onPressed: (){}, child: Row(children: [

                      Text('Signup Now',style: TextStyle(color:Color(0xffFC267C),fontSize: 18 ),),

                    ],))

                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
