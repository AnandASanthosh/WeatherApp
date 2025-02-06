import 'dart:convert';

class ApiResponse {
  final int statusCode;
  final String message;
  final dynamic _body;

  ApiResponse({required this.statusCode, required this.message, dynamic body})
      : _body = body;

  dynamic get body {
    if (_body is Map) {
      return _body as Map<String, dynamic>;
    }
    if (_body is String) {
      return json.decode(_body.toString());
    }
    return _body;
  }
}
