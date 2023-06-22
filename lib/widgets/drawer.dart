import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.blue,
          child: ListView(children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/vimal.jpg'),
                  ),
                  margin: EdgeInsets.zero,
                  accountName: Text('Vimal Vinayraj'),
                  accountEmail: Text('vimalvinayraj@gmail.com'),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text('Mail'),
            )
          ]),
        ),
      ),
    );
  }
}
