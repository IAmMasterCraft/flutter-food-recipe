import 'dart:convert';
import 'package:food_recipe/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "/feeds/list",
        {"start": '0', "limit": '18', "tag": 'list.recipe.popular'});

    final response = await http.get(uri, headers: {
      'x-rapidapi-key': 'e9a83c3714msh9365110905f62ffp1830acjsn116dbcfb478e',
      'x-rapidapi-host': 'yummly2.p.rapidapi.com',
      'useQueryString': 'true',
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var item in data['feed']) {
      _temp.add(item['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
