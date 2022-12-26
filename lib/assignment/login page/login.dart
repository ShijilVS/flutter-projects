import 'package:flutter/material.dart';
import 'package:myapp/assignment/login%20page/main.dart';
import 'package:myapp/assignment/login%20page/signup.dart';
import 'package:myapp/assignment/login%20page/welcome.dart';
class LoginForms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
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
                title: Text("Login",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:25),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text("Welcome back ! Login with your credentials",textAlign: TextAlign.center,),
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
                    return 'Enter a valid Email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if(showpass){
                            showpass = false;
                          }else{
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
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
                        MaterialPageRoute(builder: (context) => Welcome()));
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
                children: [ Text('Dont have a account?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Hello()));
                  }, child: Text("SignUp"),)

                ],
              ),
            )

          ],

        ),
      ),
    );
  }
}
