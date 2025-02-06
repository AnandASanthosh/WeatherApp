import 'api_response.dart';

abstract class ApiAbstract {
  Future<ApiResponse> get(String endpoint, [Map<String, dynamic>? query]);

  late String baseUrl;

  void onInit();
}
