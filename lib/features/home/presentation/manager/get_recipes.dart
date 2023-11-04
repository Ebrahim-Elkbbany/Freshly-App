import 'package:freshly/constant.dart';
import 'package:freshly/core/utils/api_service.dart';
import 'package:freshly/features/home/data/models/recipes_model.dart';

class GetRecipes{
  RecipesModel ?recipesModel;
  Future<RecipesModel> getRecipes()async {
    await ApiHelper().get(endPoint: "recipes/complexSearch?apiKey=$apiKey&number=100").then((value) {
       recipesModel =RecipesModel.fromJson(value);
    });
    return recipesModel!;
  }
}