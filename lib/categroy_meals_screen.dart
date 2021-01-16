import 'package:flutter/material.dart';

class CatergoryMealsScreen extends StatelessWidget {
  const CatergoryMealsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe titles'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'The recipes will be here.',
          ),
        ),
      ),
    );
  }
}
