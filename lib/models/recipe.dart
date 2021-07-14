class Recipe {
  final String name, images, totalTime;
  final double rating;
  final List preparationSteps;

  // constructor
  Recipe({
    this.name,
    this.images,
    this.rating,
    this.totalTime,
    this.preparationSteps,
  });

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      name: json["name"] as String,
      images: json["images"][0]["hostedLargeUrl"] as String,
      rating: json["rating"] as double,
      totalTime: json["totalTime"] as String,
      preparationSteps: json["preparationSteps"] as List,
    );
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return "Recipe {\nname: $name, \nimage: $images, \nrating: $rating, \ntotalTime: $totalTime, \npreparationSteps: $preparationSteps}";
  }
}
