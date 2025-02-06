import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';
import 'package:weather_app/features/home/presentation/widgets/custom.card.dart';
import 'package:weather_app/features/home/presentation/widgets/temperature.text.dart';

class WeatherCard extends StatelessWidget {
  final WeatherDataEntity data;
  const WeatherCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.city ?? "-", style: Theme.of(context).textTheme.titleLarge),
          TemperatureText(data.temperature ?? 0),
          Spacer(),
          Center(
            child: Hero(
              tag: "Icon",
              child: Lottie.asset(
                data.localWeatherIcon,
                height: MediaQuery.sizeOf(context).width * .6,
                width: MediaQuery.sizeOf(context).width * .6,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.arrow_forward)
                .animate(
                  onPlay: (controller) => controller.repeat(),
                )
                .moveX(duration: Duration(seconds: 1))
                .fadeOut(delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 500)),
          ),
        ],
      ),
    );
  }
}
