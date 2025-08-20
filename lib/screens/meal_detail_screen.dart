import 'package:cooking/models/meal.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  Widget _createContainerSection({
    required BuildContext context,
    required String sectionTitle,
    required Widget widget,
  }) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            sectionTitle,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: Colors.black),
          ),
        ),
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: widget,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
            _createContainerSection(
              context: context,
              sectionTitle: 'Ingredientes',
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Theme.of(context).colorScheme.secondary,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Icon(Icons.restaurant, size: 20),
                            SizedBox(width: 6),
                            Text(
                              meal.ingredients[index],
                              style: Theme.of(context).textTheme.titleSmall!
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            _createContainerSection(
              context: context,
              sectionTitle: 'Passos',
              widget: ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (ctx, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(
                      meal.steps[index],
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(color: Colors.black),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
