import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/assets/lottie.assets.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox.square(
        dimension: 300,
        child: Lottie.asset(LottieAssets.loading),
      ),
    );
  }
}
