import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/domain/usecases/get.weather.usecase.dart';

part 'home.event.dart';
part 'home.state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetWeatherData getWeatherData;
  HomeBloc(this.getWeatherData) : super(HomeInitial()) {
    on<HomeEvent>(_onEvent);
  }

    void _onEvent(HomeEvent event, Emitter<HomeState> emit){}
}
