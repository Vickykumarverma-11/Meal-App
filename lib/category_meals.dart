
import 'package:flutter/material.dart';
import 'category_item.dart';
class CategoryMeal extends StatelessWidget{

  final String categoryId;
  final String categoryTitle;

   CategoryMeal(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
         child: Text('The recipes for the categpry',),
      ),
    );
  }
}