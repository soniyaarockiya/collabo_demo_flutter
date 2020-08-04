import 'package:flutter/material.dart';
import 'package:collabo_demo_flutter/sub_widgets/drawer_menu.dart';

class HomePage extends StatefulWidget {
  static const id = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Tab> tabLists = [
    Tab(text: 'Salads And Soups'),
    Tab(text: 'From The Barnyard'),
    Tab(text: 'From the Hen House'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: tabLists,
            ),
            actions: <Widget>[
              Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.shopping_cart),
                  CircleAvatar(
                    radius: 10.0,
                    child: Text('Some number'),
                  ),
                ],
              )
            ],
          ),
          drawer: DrawerMenu(),
        ),
      ),
    );
  }
}
