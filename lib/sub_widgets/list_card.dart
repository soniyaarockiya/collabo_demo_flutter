import 'package:flutter/material.dart';
import 'package:collabo_demo_flutter/sub_widgets/roundButtons.dart';
import 'package:collabo_demo_flutter/data/food_item_podo.dart';

class ListCard extends StatefulWidget {
  final FoodItem foodItem;

  ListCard({this.foodItem});

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.foodItem.dishName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.foodItem.dishPrice),
              Text(widget.foodItem.dishCalories),
              Text(widget.foodItem.dishImageUrl),
            ],
          ),
          Text(widget.foodItem.dishDescription),
          Container(
            width: MediaQuery.of(context).copyWith().size.height / 5,
            child: RoundedButton(
              color: Colors.red,
              middleText: '$itemCount',
              onPressed: null,
              buttonIcon1: Icons.remove,
              onIconPress1: decreaseItem,
              onIconPress2: increaseItem,
              buttonIcon2: Icons.add,
            ),
          )
        ],
      ),
    );
  }

  void increaseItem() {
    if (itemCount <= 9) {
      setState(() {
        itemCount = itemCount + 1;
      });
    }
  }

  void decreaseItem() {
    if (itemCount != 0) {
      setState(() {
        itemCount = itemCount - 1;
      });
    }
  }
}
