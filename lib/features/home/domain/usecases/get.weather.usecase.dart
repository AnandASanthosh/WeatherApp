import 'package:equatable/equatable.dart';
import 'package:weather_app/core/usecase.dart';

import '../entities/home.entity.dart';
import '../repositories/home.repository.abstract.dart';

class GetWeatherData extends Usecase<WeatherDataEntity, WeatherDataParam> {
  final HomeRepository _repository;
  GetWeatherData(this._repository);
  @override
  Future<WeatherDataEntity> call(params) async {
    return WeatherDataEntity();
  }
}

class WeatherDataParam extends Equatable {
  const WeatherDataParam();
  toJson() {
    return {};
  }

  @override
  List<Object?> get props => [];
}
