import 'package:cooking/screens/base_page.dart';
import 'package:cooking/screens/categories_screen.dart';
import 'package:cooking/screens/category_meals_screen.dart';
import 'package:cooking/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String categoryMeals = '/category-meals';
  static const String mealDetail = '/meal-detail';

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      home: (_) => BasePage(),
      categoryMeals: (_) => CategoryMealsScreen(),
      mealDetail: (_) => MealDetailScreen(),
    };
  }
}
