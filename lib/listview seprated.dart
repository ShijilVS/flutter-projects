import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview_with_seprator(),
  ));
}

class Listview_with_seprator extends StatelessWidget {
  @override
  var name = ['eldho', 'krishna', 'abu', 'aravindhan', 'jithu'];
  var dis = ['123456', '123456', '123456', '123456', '123456'];
  var images = [
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png',
    'assets/images/user.png'
  ];

  var colors = [700, 500, 700, 500, 700, 500];

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(images[index]),
              color: Colors.yellow[colors[index]],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 6,
              color: Colors.blue[colors[index]],
            );
          },
          itemCount: images.length),
    );
  }
}
