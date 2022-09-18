// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_declarations
    final imageUrl = "https://media-exp1.licdn.com/dms/image/C5603AQH90LFuPG_D1A/profile-displayphoto-shrink_200_200/0/1661434307999?e=2147483647&v=beta&t=JaOfkMWL7sp00diXb76ijELmpLPzIXDragZV5i2b_7s";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
           // ignore: prefer_const_literals_to_create_immutables
           children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail:Text("abbaurashi@gmail.com"),
                accountName: Text("Ankti Baurashi"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
             ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile", textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
             ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email me", textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            )
           ],
        ),
      )
    );
  }
}