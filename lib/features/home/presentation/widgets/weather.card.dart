import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';
import 'package:weather_app/features/home/presentation/screens/details.screen.dart';
import 'package:weather_app/features/home/presentation/widgets/custom.card.dart';
import 'package:weather_app/features/home/presentation/widgets/temperature.text.dart';
import 'package:weather_app/features/home/presentation/widgets/weather.icon.dart';

class WeatherCard extends StatelessWidget {
  final WeatherDataEntity data;
  const WeatherCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return CustomCard(
      child: InkWell(
          splashFactory: NoSplash.splashFactory,
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(data: data)));
          },
          child: isPortrait
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CityTemperatureWidget(data: data),
                    Spacer(),
                    WeatherIcon(
                      localWeatherIcon: data.localWeatherIcon,
                      height: MediaQuery.sizeOf(context).width * .6,
                      width: MediaQuery.sizeOf(context).width * .6,
                    ),
                    Spacer(),
                    Align(alignment: Alignment.centerRight, child: AnimatedArrow()),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CityTemperatureWidget(data: data),
                    Spacer(),
                    WeatherIcon(
                      localWeatherIcon: data.localWeatherIcon,
                      height: MediaQuery.sizeOf(context).width * .6,
                      width: MediaQuery.sizeOf(context).width * .6,
                    ),
                    Spacer(),
                    Align(alignment: Alignment.bottomCenter, child: AnimatedArrow()),
                  ],
                )),
    );
  }
}

class AnimatedArrow extends StatelessWidget {
  const AnimatedArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.arrow_forward)
        .animate(
          onPlay: (controller) => controller.repeat(),
        )
        .moveX(duration: Duration(seconds: 1))
        .fadeOut(delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 500));
  }
}

class CityTemperatureWidget extends StatelessWidget {
  const CityTemperatureWidget({
    super.key,
    required this.data,
  });

  final WeatherDataEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(data.city ?? "-", style: Theme.of(context).textTheme.titleLarge),
        TemperatureText(data.temperature ?? 0),
      ],
    );
  }
}
