import 'dart:convert';
import 'package:src/http/http.dart' as http;
import 'package:src/Models1/random_info.dart/';

class RandomApi {
  static Future<RandomApi> getRandomInfo() async {
    http.Response response = await http.get(Uri.parse(
        'https://csrng.net/csrng/csrng.php?min=1&max=1000')); //võetud Weatherforecasti lehelt 4 päeva forecast
    if (response.statusCode == 200) {
      RandomApi object = RandomApi.fromJson(jsonDecode(response.body));
      return object;
    } else {
      throw Exception('Failed to load weather object');
    }
  }

  static RandomApi fromJson(String randomString) {
    return jsonDecode(randomString);
  }
}
