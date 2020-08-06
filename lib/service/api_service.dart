import 'package:collabo_demo_flutter/data/food_item_podo.dart';
import 'package:collabo_demo_flutter/service/networking.dart';
import 'dart:convert';

class ApiService {
  Networking _networking = new Networking();
  List<FoodItem> foodItemList = [];

  Future<void> getFoodData() async {
    String url = "https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad";
    var response = await _networking.getResponse(url);
  }
}
