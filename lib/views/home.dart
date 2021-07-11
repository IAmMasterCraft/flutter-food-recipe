import 'package:flutter/material.dart';
import 'package:food_recipe/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10,),
            Text("Food Recipe")
          ],
        ),
      ),
      body: RecipeCard(title: "title", rating: "rating", cookTime: "cookTime", thumbnailUrl: "thumbnailUrl"),
    );
  }
}