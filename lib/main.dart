import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'category_meals.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254,229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),

          ),
          title: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
     // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMeal.routeName: (ctx) => CategoryMeal(),

      },
    );
  }
}


