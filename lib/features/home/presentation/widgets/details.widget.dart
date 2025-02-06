import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather_app/features/home/domain/entities/weather.entity.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.data,
  });

  final WeatherDataEntity data;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                spacing: 10,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Humidity"),
                  Text(
                    "${data.humidity?.toInt() ?? '-'}%",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              width: 20, // Adjust spacing
            ),
            Expanded(
              child: Column(
                spacing: 10,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("WindSpeed"),
                  Text(
                    "${data.windSpeed?.toStringAsPrecision(2) ?? '-'}m/s",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              width: 20, // Adjust spacing
            ),
            Expanded(
                child: Text(
              data.weatherConditionDescription ?? "-",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    )
        .animate()
        .moveY(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 500),
          begin: 50,
          end: 0,
        )
        .fadeIn(
          duration: Duration(milliseconds: 500),
        );
  }
}
