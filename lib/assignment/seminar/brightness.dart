import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Testing(),));
}

class Testing extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    var deviceData =
    MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Text(deviceData.platformBrightness.toString())
        ],
      ),
    );
  }

}