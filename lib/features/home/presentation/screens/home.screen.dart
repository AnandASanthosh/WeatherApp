import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import 'package:weather_app/core/assets/lottie.assets.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';
import 'package:weather_app/features/home/presentation/widgets/custom.card.dart';
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
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return LoadingIndicator();
          }
          if (state is HomeError) {
            return ErrorCard(message: state.message);
          }
          if (state is HomeLoaded) {
            return WeatherCard(data: state.data);
          }
          return Center(child: Text("Use the above text field to search for a city"));
        },
      ),
    );
  }
}
