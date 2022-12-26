

import 'package:flutter/material.dart';
import 'package:myapp/assignment/login%20page/login.dart';
import 'package:myapp/assignment/login%20page/signup.dart';
import 'package:myapp/validation.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Center(
              child: Text('Hello There!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Center(
                child: Text("Automatic identification which enable you to verify your identity",textAlign:TextAlign.center,style: TextStyle(color:Colors.black45),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Center(
                child: Image.network("https://cdn-icons-png.flaticon.com/512/4812/4812080.png",width: 250,height: 250,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: ElevatedButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForms()));
                },
                    style: ElevatedButton.styleFrom(minimumSize:Size(50, 50),backgroundColor: Colors.brown.shade700,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                    ),
                    child:Text('Login')),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Hello()));
            },
                style: ElevatedButton.styleFrom(minimumSize:Size(50, 50),backgroundColor: Colors.brown.shade500,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
                child:Text('Signup')),
          ],
        ),
      )
      );
  }
}