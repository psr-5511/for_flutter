import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL="https://marmelab.com/images/blog/ascii-art-converter/homer.png";
    return Drawer(
      child:Container(
        color:Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration:BoxDecoration(
                  color:Colors.red,
                ),
                accountName: Text("Pranay sharma"),
                accountEmail: Text("pranay08881@xyz.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imageURL),
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color:Colors.white,
              ),

              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style:TextStyle(
                  color:Colors.white,
                ),
              ),

            ),


            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color:Colors.white,
              ),

              title: Text(
                "profile",
                textScaleFactor: 1.2,
                style:TextStyle(
                  color:Colors.white,
                ),
              ),

            ),
          ],
        ),
      ),
      
    );
  }
}