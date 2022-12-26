import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: List_with_builder(),));
}

class List_with_builder extends StatelessWidget{
  var data =['item1','item2','item3','item4','item5','item6','item7'];
  var colors = [700,600,500,400,300,200,100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list with builder"),),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            color: Colors.green[colors[index]],
            child: Center(child: Text(data[index]),),
          );
        },),
    );
  }
  }