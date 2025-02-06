import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';
import 'package:weather_app/features/home/presentation/widgets/details.widget.dart';
import 'package:weather_app/features/home/presentation/widgets/temperature.text.dart';
import 'package:weather_app/features/home/presentation/widgets/weather.icon.dart';

class DetailsScreen extends StatelessWidget {
  final WeatherDataEntity data;
  const DetailsScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: AppBar(
          title: Text(data.city ?? "-"),
          centerTitle: true,
        ),
        body: isPortrait
            ? Column(
                children: [
                  WeatherIcon(
                    localWeatherIcon: data.localWeatherIcon,
                    height: MediaQuery.sizeOf(context).width * .9,
                    width: MediaQuery.sizeOf(context).width * .9,
                  ),
                  SizedBox(height: 40),
                  TempAndDetailsWIdget(data: data),
                ],
              )
            : Row(
                children: [
                  WeatherIcon(
                    localWeatherIcon: data.localWeatherIcon,
                    height: MediaQuery.sizeOf(context).width * .2,
                    width: MediaQuery.sizeOf(context).width * .2,
                  ),
                  Flexible(child: TempAndDetailsWIdget(data: data)),
                ],
              ));
  }
}

class TempAndDetailsWIdget extends StatelessWidget {
  const TempAndDetailsWIdget({
    super.key,
    required this.data,
  });

  final WeatherDataEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TemperatureText(data.temperature ?? 0).animate().fadeIn(
              delay: Duration(milliseconds: 400),
              duration: Duration(milliseconds: 500),
            ),
        SizedBox(height: 40),
        DetailsWidget(data: data),
      ],
    );
  }
}
