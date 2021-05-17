import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: CATheme.gradientData,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //*Header
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: CATheme.gradientData,
                accountName: Text(
                  'Avine Tech',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                accountEmail: Text(
                  'admin@gmail.com',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 25,
                  child: Icon(
                    Icons.person,
                    color: CAColor.dark.withOpacity(0.75),
                    size: 35,
                  ),
                  backgroundColor: CAColor.white,
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
                style: Theme.of(context).textTheme.bodyText1,
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
                style: Theme.of(context).textTheme.bodyText1,
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
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
