import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home.event.dart';
part 'home.state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>(_onEvent);
  }

    void _onEvent(HomeEvent event, Emitter<HomeState> emit){}
}
