import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  String baseUrl = "https://api.spoonacular.com/";

  Future<dynamic> get({required String endPoint}) async {
    http.Response response = await http.get(
      Uri.parse(
        "$baseUrl$endPoint",
      ),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} ');
    }
  }


}
