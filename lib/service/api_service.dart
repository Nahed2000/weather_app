import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_model.dart';

class ApiWeather {
  Future<WeatherModel> getWeather({required String location}) async {
    var uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=rafah&appid=924a54d00d38b0dcbc2a35daa90c1044&units=metric');
    var response = await http.get(uri);
    var body = jsonDecode(response.body);
    print(WeatherModel.fromJson(body).cityName);
    return WeatherModel.fromJson(body);
  }
}
