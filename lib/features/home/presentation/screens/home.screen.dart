import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:weather_app/features/home/presentation/widgets/error.card.dart';
import 'package:weather_app/features/home/presentation/widgets/loading.indicator.dart';
import 'package:weather_app/features/home/presentation/widgets/searchfield.appbar.dart';
import 'package:weather_app/features/home/presentation/widgets/weather.card.dart';

import '../bloc/home.bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBloc>();
    return Scaffold(
      appBar: SearchfieldAppBar(
        onSubmitted: (cityName) {
          homeBloc.add(GetWeatherDataEvent(cityName));
        },
      ),
      body: StreamBuilder<Object>(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data == ConnectivityResult.none) {
              return SingleChildScrollView(child: ErrorCard(message: "No internet connection"));
            }
            return BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return LoadingIndicator();
                }
                if (state is HomeError) {
                  return SingleChildScrollView(child: ErrorCard(message: state.message));
                }
                if (state is HomeLoaded) {
                  return SingleChildScrollView(child: WeatherCard(data: state.data));
                }
                return Center(child: Text("Use the above text field to search for a city"));
              },
            );
          }),
    );
  }
}
