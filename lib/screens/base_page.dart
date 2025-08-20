import 'package:cooking/screens/categories_screen.dart';
import 'package:cooking/screens/favorite_screen.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedPage = 0;

  final List<Widget> _pages = [CategoriesScreen(), FavoriteScreen()];

  _selectScreen(int index) {
    setState(() => _selectedPage = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cooking')),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedLabelStyle: Theme.of(context).textTheme.titleSmall,
        selectedLabelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        ),
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
        ],
      ),
    );
  }
}
