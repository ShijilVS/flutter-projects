import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chaya kada"),),
      body: ListView(
        children: const [
          ListTile(title: Text('Chaya'),subtitle: Text("Oru chood chaya edakkte?"),leading: Image(image: AssetImage("assets/images/tea.png")),trailing: Icon(Icons.add),),
          ListTile(title: Text('kaapi'),subtitle: Text("Coffee aayalo?!!"),leading: Image(image: AssetImage("assets/images/tea-cup.png")),trailing: Icon(Icons.add),),
          ListTile(title: Text('Samosa'),subtitle: Text("Samosa healthyaaa"),leading: Image(image: AssetImage("assets/images/samosa.png")),trailing: Icon(Icons.add),),
          ListTile(title: Text('vada'),subtitle: Text("vada 10 rs ee ullu"),leading: Image(image: AssetImage("assets/images/medu-vada.png")),trailing: Icon(Icons.add),),
          ListTile(title: Text('boost'),subtitle: Text("secret aa"),leading: Image(image: AssetImage("assets/images/tea.png")),trailing: Icon(Icons.add),)
        ],
      ),
    );
  }

}