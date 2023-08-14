import 'package:weather_app/weather_app/data/models/weather_model.dart';
import 'package:dio/dio.dart';

import '../../../core/constances.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          "${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appKey}");
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
