import 'package:flutter/material.dart';
import 'data/color.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes App',
      theme: ThemeData(
        primarySwatch: blackPrimaryColor,
        canvasColor: Colors.yellow,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(),
            title: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      home: CategoriesScreen(),
      routes: {
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
