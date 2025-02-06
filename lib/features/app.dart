import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/bloc/home.bloc.dart';
import 'package:weather_app/features/home/presentation/screens/home.screen.dart';
import 'package:weather_app/features/setup.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => HomeBloc(locator.get()),
        child: HomeScreen(),
      ),
    );
  }
}
