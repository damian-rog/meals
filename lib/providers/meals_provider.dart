import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';

//this basic Provier() here is good only when you have static data (like dummyMeals here - list that never changes)
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
