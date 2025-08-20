import 'package:cooking/models/category.dart';
import 'package:cooking/routes/app_routes.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {super.key});

  _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.categoryMeals, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [category.color.withValues(alpha: 0.5), category.color],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
