import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavouriteMealsNotifer extends StateNotifier<List<Meal>> {
  //initialial data:
  FavouriteMealsNotifer() : super([]);

  void toggleMealFavouriteStatus(Meal meal) {
    final mealIsFavourire = state.contains(meal);

    if (mealIsFavourire) {
      state = state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

//this StateNotifierProvider - data can change
final favouriteMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifer, List<Meal>>((ref) {
  return FavouriteMealsNotifer();
});
