import 'package:cooking/components/meal_item.dart';
import 'package:cooking/data/dummy_data.dart';
import 'package:cooking/models/category.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Category category = ModalRoute.of(context)?.settings.arguments as Category;

    final meals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text('Comidas')),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) {
          return MealItem(meal: meals[index]);
        },
      ),
    );
  }
}
