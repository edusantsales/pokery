import '../../models/http_response_model.dart';

abstract class IHttpService {
  Future<HttpResponseModel> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<HttpResponseModel> post(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<HttpResponseModel> put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<HttpResponseModel> patch(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<HttpResponseModel> delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
