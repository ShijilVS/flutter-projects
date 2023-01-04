import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          ListTile(title: Text('Eldho'),subtitle:Wrap(children: [Icon(Icons.call_received,size:15,color: Colors.red,),Text("Yesterday, 18:19")],) ,leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295431_1280.png"),),trailing: Icon(Icons.call,color: Colors.green,),),
          ListTile(title: Text('Eldho'),subtitle: Wrap(children: [Icon(Icons.call_received,size:15,color: Colors.red,),Text("Yesterday, 18:19")],),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/58/avatar-1295431_1280.png"),),trailing: Icon(Icons.call,color: Colors.green,),),
          ListTile(title: Text('jithu'),subtitle: Wrap(children: [Icon(Icons.call_made,size:15,color: Colors.red,),Text("March 27 18:26")]),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295396_1280.png"),),trailing: Icon(Icons.call,color: Colors.green,),),
          ListTile(title: Text('krishna'),subtitle:Wrap(children: [Icon(Icons.call_made,size:15,color: Colors.green,), Text("March 17 1:10")],),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295401_1280.png"),),trailing: Icon(Icons.call,color: Colors.green),),
          ListTile(title: Text('aravind'),subtitle: Wrap(children: [Icon(Icons.call_received,size:15,color: Colors.red,),Text("March 15 1:08")]),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295389_1280.png"),),trailing: Icon(Icons.call,color: Colors.green),),
          ListTile(title: Text('krishna'),subtitle: Wrap(children: [Icon(Icons.call_received,size:15,color: Colors.green,),Text("March 12 15:11")]),leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295394_1280.png"),),trailing: Icon(Icons.call,color: Colors.green),),
        ],
      ),
    );
  }

}