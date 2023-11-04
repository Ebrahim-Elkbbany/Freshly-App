import 'package:freshly/core/utils/api_service.dart';
import 'package:freshly/features/details/data/models/details_model.dart';
import '../../../../constant.dart';


class GetRecipesDetails{
  RecipesDetailsModel ?recipesDetailsModel;

  Future<RecipesDetailsModel> getRecipesDetails({required int id})async{
    await ApiHelper().get(endPoint:"recipes/$id/information?apiKey=$apiKey&includeNutrition=false").then((value) {
      recipesDetailsModel =RecipesDetailsModel.fromJson(value);
    });
    return recipesDetailsModel!;
  }
}