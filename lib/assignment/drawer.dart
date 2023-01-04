import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navdrawer(),
  ));
}

class Navdrawer extends StatelessWidget {
  const Navdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      endDrawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.deepOrange),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Drawer(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/11/29/09/15/paint-2985569_1280.jpg"),
                      ),
                      title: Text(
                        "Terra Crowal",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Administrator",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(
                      color: Colors.deepOrange,
                      height: 20,
                      thickness: 20,
                    ),
                    const ListTile(
                      leading: Icon(Icons.dashboard, color: Colors.white),
                      title: Text(
                        "Dashboard",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.leaderboard, color: Colors.white),
                      title: Text(
                        "Leads",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.groups_sharp, color: Colors.white),
                      title: Text(
                        "Clients",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.rocket, color: Colors.white),
                      title: Text(
                        "Projects",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.handshake, color: Colors.white),
                      title: Text(
                        "Partners",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.payments, color: Colors.white),
                      title: Text(
                        "Payments",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.supervised_user_circle_sharp,
                          color: Colors.white),
                      title: Text(
                        "Users",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.library_add, color: Colors.white),
                      title: Text(
                        "Library",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 80, right: 30, left: 30),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary:Colors.deepOrange.shade500,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: const Text("Logout")),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
