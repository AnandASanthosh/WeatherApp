import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/dio/interceptors/apikey.interceptor.dart';

import '../api_abstract.dart';
import '../api_response.dart';

class DioApi implements ApiAbstract {
  @override
  String baseUrl = "https://api.openweathermap.org/data/2.5/";
  late Dio _dio;

  DioApi() {
    onInit();
  }

  @override
  onInit() {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      validateStatus: (code) => true,
    );
    _dio = Dio(options);
    _dio.interceptors.add(AwesomeDioInterceptor());
    _dio.interceptors.add(ApiKeyInterceptor());
  }

  @override
  Future<ApiResponse> get(String endpoint, [Map<String, dynamic>? query]) async {
    try {
      var response = await _dio.get(endpoint, queryParameters: query);
      return ApiResponse(statusCode: response.statusCode!, message: response.statusMessage ?? "Network issue", body: response.data);
    } catch (e) {
      return ApiResponse(statusCode: 400, message: "Network issue");
    }
  }
}
