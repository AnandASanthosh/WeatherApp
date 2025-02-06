import 'package:equatable/equatable.dart';

class Wind extends Equatable {
  final double? speed;
  final int? deg;

  const Wind({this.speed, this.deg});

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: (json['speed'] as num?)?.toDouble(),
        deg: json['deg'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'speed': speed,
        'deg': deg,
      };

  @override
  List<Object?> get props => [speed, deg];
}
