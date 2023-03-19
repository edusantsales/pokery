class HttpResponseModel {
  HttpResponseModel({
    this.body,
    this.statusCode,
    this.statusMessage,
    this.path,
    this.headers,
    this.queryParameters,
  });

  /// Http response body.
  final dynamic body;

  /// Http response status code.
  final int? statusCode;

  /// Returns the reason phrase associated with the status code.
  final String? statusMessage;

  /// Http request path.
  final String? path;

  /// Http request headers.
  final Map<String, dynamic>? headers;

  /// Http request query parameters.
  final Map<String, dynamic>? queryParameters;
}
