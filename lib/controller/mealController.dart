import 'package:get/get.dart';

class MealController extends GetxController {
  RxList meals = [].obs;

  addToList(String mealName) {
    meals.add(mealName);
    print(meals.length); 
  }
}
