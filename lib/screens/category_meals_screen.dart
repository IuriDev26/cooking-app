import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String? nome;

  const CategoryMealsScreen({super.key, this.nome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Comidas')),
      body: Text('Comidas da categoria ${nome ?? ''}'),
    );
  }
}
