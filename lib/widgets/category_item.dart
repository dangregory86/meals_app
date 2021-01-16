import 'package:flutter/material.dart';

import '../categroy_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color colour;

  const CategoryItem({Key key, this.title, this.colour}) : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CatergoryMealsScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colour.withOpacity(0.5),
              colour,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
