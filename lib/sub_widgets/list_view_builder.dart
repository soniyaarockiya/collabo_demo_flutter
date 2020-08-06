import 'package:collabo_demo_flutter/data/food_item_podo.dart';
import 'package:collabo_demo_flutter/sub_widgets/list_card.dart';
import 'package:flutter/material.dart';

class ListViewBase extends StatefulWidget {
  final List<FoodItem> foodList;

  ListViewBase({this.foodList});

  @override
  _ListViewBaseState createState() => _ListViewBaseState();
}

class _ListViewBaseState extends State<ListViewBase> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.foodList.length,
      itemBuilder: (context, index) {
        return ListCard(
          foodItem: widget.foodList[index],
        );
      },
    );
  }
}
