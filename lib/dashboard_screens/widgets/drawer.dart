import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 150,
          width: double.infinity,
          color: Colors.amber[50],
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            leading: Icon(Icons.person),
            title: Text("My Profile"),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            leading: Icon(Icons.mobile_friendly),
            title: Text("Contect with us"),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            leading: Icon(Icons.share),
            title: Text("Share App"),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ]),
    );
  }
}
