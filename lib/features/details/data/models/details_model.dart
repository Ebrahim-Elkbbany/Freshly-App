class RecipesDetailsModel {
  int id;
  String title;
  String image;
  int servings;
  int readyInMinutes;
  List<ExtendedIngredient> extendedIngredients;
  String summary;

  RecipesDetailsModel({
    required this.id,
    required this.title,
    required this.image,
    required this.servings,
    required this.readyInMinutes,
    required this.extendedIngredients,
    required this.summary,
  });

  factory RecipesDetailsModel.fromJson(Map<String, dynamic> json) =>
      RecipesDetailsModel(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        servings: json["servings"],
        readyInMinutes: json["readyInMinutes"],
        extendedIngredients: List<ExtendedIngredient>.from(
            json["extendedIngredients"]
                .map((x) => ExtendedIngredient.fromJson(x))),
        summary: json["summary"],
      );
}

class ExtendedIngredient {
  int id;
  String name;

  ExtendedIngredient({
    required this.id,
    required this.name,
  });

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) =>
      ExtendedIngredient(
        id: json["id"],
        name: json["name"],
      );
}
