import 'package:weather_app/weather_app/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(super.id, super.cityName, super.description, super.main);
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(json["id"], json["name"],
        json["weather"][0]["description"], json["weather"][0]["main"]);
  }
}
