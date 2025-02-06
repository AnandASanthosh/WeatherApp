import 'package:equatable/equatable.dart';
import 'package:weather_app/core/usecase.dart';

import '../entities/weather.entity.dart';
import '../repositories/home.repository.abstract.dart';

class GetWeatherData extends Usecase<WeatherDataEntity, WeatherDataParam> {
  final HomeRepository _repository;
  GetWeatherData(this._repository);
  @override
  Future<WeatherDataEntity> call(params) async {
    return _repository.getWeatherData(params.cityName);
  }
}

class WeatherDataParam extends Equatable {
  final String cityName;
  const WeatherDataParam({required this.cityName});

  @override
  List<Object?> get props => [cityName];
}
