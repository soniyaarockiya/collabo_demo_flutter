import 'package:collabo_demo_flutter/data/food_item_podo.dart';
import 'package:flutter/material.dart';
import 'package:collabo_demo_flutter/sub_widgets/drawer_menu.dart';
import 'package:collabo_demo_flutter/sub_widgets/list_view_builder.dart';
import 'package:collabo_demo_flutter/service/api_service.dart';

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

  List<FoodItem> foodItemListInData = [];

  @override
  void initState() {
    super.initState();
    getFoodData();
  }

  void getFoodData() async {
    ApiService apiService = new ApiService();
    await apiService.getFoodData();
  }

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
          body: TabBarView(children: [
            ListViewBase(
              foodList: foodItemListInData,
            ),
            ListViewBase(
              foodList: foodItemListInData,
            ),
            ListViewBase(
              foodList: foodItemListInData,
            ),
          ]),
        ),
      ),
    );
  }
}
