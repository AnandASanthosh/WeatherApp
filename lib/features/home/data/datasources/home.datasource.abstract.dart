import 'package:weather_app/features/home/data/models/weather.data/weather.data.dart';

abstract class HomeDataSource{
   Future<WeatherData> getWeatherData({required String city});
}