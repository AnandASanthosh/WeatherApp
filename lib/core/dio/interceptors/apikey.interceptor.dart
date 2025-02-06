import 'package:dio/dio.dart';

class ApiKeyInterceptor extends Interceptor {
  ApiKeyInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters["appid"] = "f216c4f324a0a68ee1e9214d3f77487c";
    super.onRequest(options, handler);
  }
}
