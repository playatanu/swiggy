///[Restudent Data List]
import 'package:http/http.dart' as http;
import 'package:swiggy/models/restudent_model.dart';

Uri restudenturl = Uri.parse(
    'https://raw.githubusercontent.com/playatanu/swiggy/main/server_github/data');

class RestaurantData {
  Future<List<RestudentModel>> getrestaurantlist() async {
    final response = await http.get(restudenturl);

    if (response.statusCode == 200) {
      return restaurantModelFromJson(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
