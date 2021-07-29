import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
        ),
        child: ListView(
          children: [
            DrawerHeader(
            padding: EdgeInsets.zero,margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Momin Khan"),
              accountEmail: Text("momin.khan3309@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/momin.png'),
              ),

            ),
          ),

            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text('Home', textScaleFactor: 1.2,style: TextStyle(
                color: Colors.white,
              ),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text('Mail', textScaleFactor: 1.2,style: TextStyle(
                color: Colors.white,
              ),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text('Profile', textScaleFactor: 1.2,style: TextStyle(
                color: Colors.white,
              ),),
            ),
  ]
        ),
      ),
    );
  }
}
