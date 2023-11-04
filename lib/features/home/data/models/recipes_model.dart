
class RecipesModel {
  List<Result> results;
  int offset;
  int number;
  int totalResults;

  RecipesModel({
    required this.results,
    required this.offset,
    required this.number,
    required this.totalResults,
  });

  factory RecipesModel.fromJson(Map<String, dynamic> json) => RecipesModel(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    offset: json["offset"],
    number: json["number"],
    totalResults: json["totalResults"],
  );

}

class Result {
  int id;
  String title;
  String image;

  Result({
    required this.id,
    required this.title,
    required this.image,

  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    title: json["title"],
    image: json["image"],
  );

}

