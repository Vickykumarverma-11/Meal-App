import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'category_item.dart';
class CategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal"),),
        body: GridView(
          padding: EdgeInsets.all(25),
          children:Dummy_CATEGORIES.map((catData) => CategoryItem(
          catData.color,
          catData.title,)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
    );
  }
  }