import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/assets/lottie.assets.dart';
import 'package:weather_app/features/home/presentation/widgets/custom.card.dart';

class ErrorCard extends StatelessWidget {
  final String message;
  const ErrorCard({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(LottieAssets.error, height: 100),
          SizedBox(height: 20),
          Text(message),
        ],
      ),
    );
  }
}
