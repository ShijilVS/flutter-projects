import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Home() ,
  ));
}
class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    var height = Size.height;
    var width = Size.width;

    // getting the
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
        backgroundColor: Colors.green,
      ),

      // checking the orientation
      body:Container(
        color: Colors.red,
        height: height/2,
        width: width/2,
      )
    );
  }
}