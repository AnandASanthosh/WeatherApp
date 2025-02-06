import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';
import 'package:weather_app/features/home/domain/usecases/get.weather.usecase.dart';

part 'home.event.dart';
part 'home.state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetWeatherData getWeatherData;
  HomeBloc(this.getWeatherData) : super(HomeInitial()) {
    on<GetWeatherDataEvent>(_onGetWeatherDataEvent);
  }

  void _onGetWeatherDataEvent(GetWeatherDataEvent event, Emitter<HomeState> emit) async {
    try {
      emit(HomeLoading());
      var data = await getWeatherData(WeatherDataParam(cityName: event.cityName));
      emit(HomeLoaded(data));
    } catch (e, s) {
      log("get Weather data error", error: e, stackTrace: s);
      emit(HomeError("Failed to get weather data"));
    }
  }
}
