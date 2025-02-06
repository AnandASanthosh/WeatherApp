import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';
import 'package:weather_app/features/home/presentation/widgets/details.widget.dart';
import 'package:weather_app/features/home/presentation/widgets/temperature.text.dart';

class DetailsScreen extends StatelessWidget {
  final WeatherDataEntity data;
  const DetailsScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.city ?? "-"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Hero(
              tag: "Icon",
              child: Lottie.asset(
                data.localWeatherIcon,
                height: MediaQuery.sizeOf(context).width * .9,
                width: MediaQuery.sizeOf(context).width * .9,
              ),
            ),
          ),
          TemperatureText(data.temperature ?? 0).animate().fadeIn(
                delay: Duration(milliseconds: 400),
                duration: Duration(milliseconds: 500),
              ),
          SizedBox(height: 40),
          DetailsWidget(data: data)
        ],
      ),
    );
  }
}
