import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> WeatherGet(String city) async {
  final response = await http.get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=1d599f047d844e08b21175834241404&q=$city'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Ошибка загрузки данных');
  }
}