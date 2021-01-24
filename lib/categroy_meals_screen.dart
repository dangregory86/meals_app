import 'package:flutter/material.dart';

import './models/category.dart';

class CatergoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Category>;
    final Category cat = routeArgs['cat'];
    return Scaffold(
      appBar: AppBar(
        title: Text('${cat.title} recipes'),
      ),
      body: Container(
        color: cat.colour,
        child: Center(
          child: Text(
            'The recipes will be here.',
          ),
        ),
      ),
    );
  }
}
