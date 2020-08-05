import 'package:collabo_demo_flutter/data/food_item_pojo.dart';
import 'package:collabo_demo_flutter/service/networking.dart';

class ApiService {
  Networking _networking = new Networking();
  List<FoodItem> foodItemList = [];

  Future<void> getFoodData() async {
    String url = "https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad";
    dynamic response = await _networking.getResponse(url);

    print(response[0]["table_menu_list"]);
  }
}
