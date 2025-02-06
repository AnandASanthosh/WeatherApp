import 'package:weather_app/features/home/domain/entities/weather.entity.dart';

import '../datasources/home.datasource.abstract.dart';
import '../../domain/repositories/home.repository.abstract.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);

  @override
  Future<WeatherDataEntity> getWeatherData(String city) async {
    var data = await _dataSource.getWeatherData(city: city);

    return WeatherDataEntity.fromJson(data.toJson());
  }
}
