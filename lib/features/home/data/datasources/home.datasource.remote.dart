import 'package:weather_app/core/api_abstract.dart';
import 'package:weather_app/features/home/data/models/weather.data/weather.data.dart';

import 'home.datasource.abstract.dart';

class HomeDataSourceRemoteImpl extends HomeDataSource {
  final ApiAbstract _api;

  HomeDataSourceRemoteImpl(this._api);
  @override
  Future<WeatherData> getWeatherData({required String city}) async {
    try {
      var data = await _api.get("weather?q=$city");

      return WeatherData.fromJson(data.body);
    } catch (e) {
      rethrow;
    }
  }
}
