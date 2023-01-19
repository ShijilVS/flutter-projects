import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Ori(),
  ));
}

class Ori extends StatelessWidget {
  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    // getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;

    //size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
        backgroundColor: Colors.green,
      ),

      // checking the orientation
      body: orientation == Orientation.portrait
          ? Container(
              color: Colors.blue,
              height: height / 4,
              width: width / 4,
            )
          : Container(
              height: height / 3,
              width: width / 3,
              color: Colors.red,
            ),
    );
  }
}
