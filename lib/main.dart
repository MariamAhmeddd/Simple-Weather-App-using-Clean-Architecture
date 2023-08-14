import 'package:flutter/material.dart';
import 'package:weather_app/weather_app/data/datasource/remote_datasource.dart';
import 'package:weather_app/weather_app/data/repository/weather_repository.dart';
import 'package:weather_app/weather_app/domain/entities/weather.dart';
import 'package:weather_app/weather_app/domain/repository/base_weather_repository.dart';
import 'package:weather_app/weather_app/domain/usecases/get_weather_by_country.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository repository = WeatherRepository(baseRemoteDataSource);
  Weather weather = await GetWeatherByCountryName(repository).execute("Egypt");
  print(weather);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text(
          "just check the console! it just an app to test understanding of clean architecture, and how you build your app using clean architecture",
        ),
      ),
    );
  }
}
