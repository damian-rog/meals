import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavouriteMealsNotifer extends StateNotifier<List<Meal>> {
  //initialial data:
  FavouriteMealsNotifer() : super([]);

  bool toggleMealFavouriteStatus(Meal meal) {
    final mealIsFavourire = state.contains(meal);

    if (mealIsFavourire) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

//this StateNotifierProvider - data can change
final favouriteMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifer, List<Meal>>((ref) {
  return FavouriteMealsNotifer();
});
