import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[300],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple
              ),
              margin: EdgeInsets.zero,
              accountName: Text("Aeny"),
              accountEmail: Text("aeny@test.com"),
              currentAccountPicture: CircleAvatar(
                radius: 10.0,
                backgroundImage: AssetImage("assets/images/p2.jpg"),
              ),
              // otherAccountsPictures: [
              //   // Icon(CupertinoIcons.bell_fill, color: Colors.white,)
              // ],
            ),
          ),
          ListTile(
            iconColor: Colors.black,
            minVerticalPadding: 0.0,
            onTap: () {},
            leading: Icon(CupertinoIcons.home),
            title: Text("Home", style: TextStyle(fontSize: 22.0),),
          ),
          // Divider(height: 12.0, thickness: 12.0, color: Colors.red, ),
          ListTile(
            onTap: () {
              setState(() {
                isPressed ? isPressed = false : isPressed = true;
                // if (isPressed) {
                //   isPressed = false;
                // } else {
                //   isPressed = true;
                // }
              });
            },
            iconColor: Colors.black,
            minVerticalPadding: 0.0,
            leading: Icon(isPressed ? CupertinoIcons.person_alt : CupertinoIcons.person),
            title: const Text("Profile", style: TextStyle(fontSize: 22.0),),
          ),
          // Divider(height: 12.0, thickness: 12.0, color: Colors.red, ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
            iconColor: Colors.black,
            minVerticalPadding: 0.0,
            leading: const Icon(CupertinoIcons.lock_fill),
            title: const Text("Login", style: TextStyle(fontSize: 22.0),),
          ),
          // Divider(height: 12.0, thickness: 12.0, color: Colors.red, ),
        ],
      ),
    );
  }
}

