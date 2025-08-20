class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final String imageUrl;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isLactoseFree;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  Meal({
    required this.id,
    required this.title,
    required this.categories,
    required this.ingredients,
    required this.imageUrl,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isLactoseFree,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.hard:
        return 'Difícil';
      case Complexity.medium:
        return 'Médio';
      case Complexity.simple:
        return 'Simples';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
      case Cost.fair:
        return 'Razoável';
      case Cost.expensive:
        return 'Caro';
    }
  }
}

enum Complexity { simple, medium, hard }

enum Cost { cheap, fair, expensive }
