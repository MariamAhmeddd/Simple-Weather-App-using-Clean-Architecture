import 'package:weather_app/weather_app/data/datasource/remote_datasource.dart';
import 'package:weather_app/weather_app/domain/entities/weather.dart';
import 'package:weather_app/weather_app/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
