
import 'package:flutter/material.dart';
import 'package:soppingapp/category_meals.dart';
import 'category_meals.dart';

class CategoryItem extends StatelessWidget{
  final String id;
  final String title;
  final Color color;
  CategoryItem(this.id, this.title, this.color);
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return CategoryMeal(id, title);
    },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
             onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(0.7),
        color,
        ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

        ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('id', id));
  }
}