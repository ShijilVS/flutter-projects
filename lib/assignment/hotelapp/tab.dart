import 'package:flutter/material.dart';
import 'package:myapp/ListPage.dart';
import 'package:myapp/grid%20with%20builder.dart';

void main(){
  runApp(MaterialApp(home: My_tab(),));
}
class My_tab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child:
      Scaffold(
      appBar: AppBar(backgroundColor:Color.fromRGBO(2, 94, 84, 100),title: Text("WhatsApp"),
      actions: [Icon(Icons.search),Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Icon(Icons.more_vert),
      )],
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.people),

          ),
          Tab(text: "chats",),
          Tab(text: "status",),
          Tab(text: "call",)
        ]),
      ),
      body: TabBarView(
        children: [
      Center(
      child: Text("Community"),
      ),
        Center(
          child: Text("Chats"),
        ),
          Gridwithbuilder(),
          ListPage(),
      ],

      ),
    ),
    );
  }
  
}