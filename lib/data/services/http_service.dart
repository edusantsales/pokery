import 'package:http/http.dart';

import '../../domain/interfaces/services/http_service_interface.dart';
import '../../domain/models/http_response_model.dart';

class HttpService implements IHttpService {
  HttpService() : _http = Client() {
    _baseUrl = const String.fromEnvironment('API_URL');
  }

  final Client _http;
  late String _baseUrl;

  @override
  Future<HttpResponseModel> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _http.get(
      Uri.https(_baseUrl, path, queryParameters),
      headers: headers as Map<String, String>?,
    );
    return HttpResponseModel(
      body: response.body,
      headers: response.headers,
      path: path,
      queryParameters: queryParameters,
      statusCode: response.statusCode,
      statusMessage: response.reasonPhrase,
    );
  }

  @override
  Future<HttpResponseModel> post(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _http.post(
      Uri.https(_baseUrl, path, queryParameters),
      headers: headers as Map<String, String>?,
      body: body,
    );
    return HttpResponseModel(
      body: response.body,
      headers: response.headers,
      path: path,
      queryParameters: queryParameters,
      statusCode: response.statusCode,
      statusMessage: response.reasonPhrase,
    );
  }

  @override
  Future<HttpResponseModel> put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _http.put(
      Uri.https(_baseUrl, path, queryParameters),
      headers: headers as Map<String, String>?,
      body: body,
    );
    return HttpResponseModel(
      body: response.body,
      headers: response.headers,
      path: path,
      queryParameters: queryParameters,
      statusCode: response.statusCode,
      statusMessage: response.reasonPhrase,
    );
  }

  @override
  Future<HttpResponseModel> patch(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _http.patch(
      Uri.https(_baseUrl, path, queryParameters),
      headers: headers as Map<String, String>?,
      body: body,
    );
    return HttpResponseModel(
      body: response.body,
      headers: response.headers,
      path: path,
      queryParameters: queryParameters,
      statusCode: response.statusCode,
      statusMessage: response.reasonPhrase,
    );
  }

  @override
  Future<HttpResponseModel> delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _http.delete(
      Uri.https(_baseUrl, path, queryParameters),
      headers: headers as Map<String, String>?,
      body: body,
    );
    return HttpResponseModel(
      body: response.body,
      headers: response.headers,
      path: path,
      queryParameters: queryParameters,
      statusCode: response.statusCode,
      statusMessage: response.reasonPhrase,
    );
  }
}
