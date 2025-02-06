import 'package:equatable/equatable.dart';
import 'package:weather_app/core/assets/lottie.assets.dart';

class WeatherDataEntity extends Equatable {
  final String? city;
  final String? weatherCondition;
  final String? weatherConditionIcon;
  final String? weatherConditionDescription;
  final double? temperature;
  final double? windSpeed;
  final double? humidity;

  const WeatherDataEntity({
    this.city,
    this.weatherCondition,
    this.weatherConditionIcon,
    this.weatherConditionDescription,
    this.temperature,
    this.windSpeed,
    this.humidity,
  });

  factory WeatherDataEntity.fromJson(Map<String, dynamic> json) {
    return WeatherDataEntity(
      city: json['name'] as String?,
      weatherCondition: json['weather'] != null && json['weather'].isNotEmpty ? json['weather'][0]['main'] as String? : null,
      weatherConditionIcon: json['weather'] != null && json['weather'].isNotEmpty ? json['weather'][0]['icon'] as String? : null,
      weatherConditionDescription: json['weather'] != null && json['weather'].isNotEmpty ? json['weather'][0]['description'] as String? : null,
      temperature: json['main'] != null ? ((json['main']['temp'] as num?)?.toDouble() ?? 0) - 273.15 : null,
      windSpeed: json['wind'] != null ? (json['wind']['speed'] as num?)?.toDouble() : null,
      humidity: json['main'] != null ? (json['main']['humidity'] as num?)?.toDouble() : null,
    );
  }

  String get localWeatherIcon {
    const iconMap = {
      '01d': LottieAssets.sunny,
      '01n': LottieAssets.night,
      '02d': LottieAssets.partlyCloudy,
      '02n': LottieAssets.cloudyNight,
      '03d': LottieAssets.cloudyNight,
      '03n': LottieAssets.cloudyNight,
      '04d': LottieAssets.mist,
      '04n': LottieAssets.mist,
      '09d': LottieAssets.partlyShower,
      '09n': LottieAssets.rainyNight,
      '10d': LottieAssets.rainyNight,
      '10n': LottieAssets.rainyNight,
      '11d': LottieAssets.stormShowerDay,
      '11n': LottieAssets.storm,
      '13d': LottieAssets.snowSunny,
      '13n': LottieAssets.snowNight,
      '50d': LottieAssets.foggy,
      '50n': LottieAssets.foggy,
    };
    return iconMap[weatherConditionIcon] ?? LottieAssets.error;
  }

  @override
  List<Object?> get props => [
        city,
        weatherCondition,
        weatherConditionIcon,
        weatherConditionDescription,
        temperature,
        windSpeed,
        humidity,
      ];
}
