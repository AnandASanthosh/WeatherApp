import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherIcon extends StatelessWidget {
  final double width;
  final double height;
  final String localWeatherIcon;

  const WeatherIcon({
    super.key,
    required this.localWeatherIcon,
    required this.width,
    required this.height,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "Icon",
        child: Lottie.asset(
          localWeatherIcon,
          height: MediaQuery.sizeOf(context).width * .6,
          width: MediaQuery.sizeOf(context).width * .6,
        ),
      ),
    );
  }
}
