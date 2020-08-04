import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Some name'),
              accountEmail: null,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
            ),
            ListTile(
              dense: false,
              leading: CircleAvatar(
                child: Icon(Icons.exit_to_app),
              ),
              title: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
