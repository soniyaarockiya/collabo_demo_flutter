import 'package:collabo_demo_flutter/data/food_item_pojo.dart';
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

  List<FoodItem> foodItemListInData = [
    FoodItem(
      dishName: 'Dsih name......',
      dishPrice: '50unr',
      dishCalories: '50000',
      dishDescription: 'soniyaajjajaj',
      dishImageUrl: 'bbjbjjjjjnj',
    ),
    FoodItem(
      dishName: 'Dsih name.222.....',
      dishPrice: '50unr',
      dishCalories: '50000',
      dishDescription: 'soniy3ye83uei30eaajjajaj',
      dishImageUrl: 'bbjbjjjji3e3ue0ejnj',
    ),
    FoodItem(
      dishName: 'Dsih name...eeeee...',
      dishPrice: '50unfmeker',
      dishCalories: '50000ekekjdek',
      dishDescription: 'soniyaajjajmdnendkemdmedleaj',
      dishImageUrl: 'bbjbjjjjjnj',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService apiService = new ApiService();
    apiService.getFoodData();
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
