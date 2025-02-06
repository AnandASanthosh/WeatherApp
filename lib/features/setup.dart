import 'package:get_it/get_it.dart';
import 'package:weather_app/core/api_abstract.dart';
import 'package:weather_app/core/dio/dio_api.dart';
import 'package:weather_app/features/home/data/datasources/home.datasource.abstract.dart';
import 'package:weather_app/features/home/data/datasources/home.datasource.remote.dart';
import 'package:weather_app/features/home/data/repositories/home.repository.dart';
import 'package:weather_app/features/home/domain/repositories/home.repository.abstract.dart';
import 'package:weather_app/features/home/domain/usecases/get.weather.usecase.dart';

final locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton<ApiAbstract>(() => DioApi());
  locator.registerLazySingleton<HomeDataSource>(() => HomeDataSourceRemoteImpl());
  locator.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(locator.get()));
  locator.registerLazySingleton<GetWeatherData>(() => GetWeatherData(locator.get()));
}
