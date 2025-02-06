import 'package:weather_app/features/home/domain/entities/weather.entity.dart';

abstract class HomeRepository {
  Future<WeatherDataEntity> getWeatherData(String city);
}
