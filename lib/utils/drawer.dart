import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CAColor.dark.withOpacity(0.75),
              //CAColor.light,
              //
              CAColor.dark,
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //*Header
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    //CAColor.light,
                    CAColor.dark,
                    CAColor.dark.withOpacity(0.75),
                    //CAColor.secondary,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    'Avine Tech',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  accountEmail: Text(
                    'admin@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      color: CAColor.dark,
                      size: 35,
                    ),
                    backgroundColor: CAColor.white,
                  ),
                ),
              ),
            ),
            //*home
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: CAColor.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: CAColor.white,
                ),
              ),
            ),
            //*profile
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: CAColor.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: CAColor.white,
                ),
              ),
            ),
            //*home
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: CAColor.white,
              ),
              title: Text(
                'Email Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: CAColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
