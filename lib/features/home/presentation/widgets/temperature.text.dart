import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  final double temperature;
  const TemperatureText(this.temperature, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.displayLarge,
        children: [
          TextSpan(text: "°", style: TextStyle(color: Colors.transparent)),
          TextSpan(
            text: temperature.toInt().toString(),
          ),
          TextSpan(text: "°", style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
