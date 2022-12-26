import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/assignment/login%20page/login.dart';
import 'package:myapp/assignment/login%20page/main.dart';
import 'package:myapp/home.dart';


class Hello extends StatefulWidget {
  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  var formkey = GlobalKey<FormState>();
  var passwordtest;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
      Form(
        key: formkey,
        child: ListView(
          children: [
            ListTile(
              leading: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash())); }, child: Icon(Icons.arrow_back_ios_new,color: Colors.brown,),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: ListTile(
                title: Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:25),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text("Create an account,its free",textAlign: TextAlign.center,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid UserName';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Enter a valid password , length  should be greater than 6';
                  } else {
                    return null;
                  }
                },onChanged:(value)=> passwordtest = value ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (cpassword) {
                  if (cpassword!= passwordtest) {
                    return 'Password didnt match';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20,left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginForms()));
                    } else {
                      return null;
                    }
                  },style: ElevatedButton.styleFrom(minimumSize:Size(60,50),backgroundColor: Colors.brown.shade500,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                  child:Text('Login')),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text('Already have a account?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForms()));
                  }, child: Text("Login"),)

                ],
              ),
            )

          ],

        ),
      ),
    );
  }
}




