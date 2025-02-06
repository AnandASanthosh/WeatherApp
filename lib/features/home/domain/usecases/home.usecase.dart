import 'package:equatable/equatable.dart';
import 'package:weather_app/core/usecase.dart';

import '../entities/home.entity.dart';
import '../repositories/home.repository.abstract.dart';

class HomeUsecase extends Usecase<HomeEntity, HomeParam> {
  final HomeRepository _repository;
  HomeUsecase(this._repository);
  @override
  Future<HomeEntity> call(params) async{
    return HomeEntity();
  }
}

class HomeParam extends Equatable {
  const HomeParam();
  toJson() {
    return {};
  }

  @override
  List<Object?> get props => [];
}
