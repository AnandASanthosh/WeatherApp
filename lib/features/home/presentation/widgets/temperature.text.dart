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
          TextSpan(
            text: temperature.toStringAsFixed(0),
          ),
          TextSpan(text: "°", style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
