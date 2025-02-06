import '../datasources/home.datasource.abstract.dart';
import '../../domain/repositories/home.repository.abstract.dart';

class HomeRepositoryImpl extends HomeRepository{
  final HomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);
}