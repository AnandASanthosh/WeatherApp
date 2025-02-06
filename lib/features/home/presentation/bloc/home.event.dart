part of 'home.bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class GetWeatherDataEvent extends HomeEvent {
  final String cityName;

  const GetWeatherDataEvent(this.cityName);

  @override
  List<Object> get props => [cityName];
}