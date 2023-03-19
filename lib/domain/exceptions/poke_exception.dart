import 'dart:io';

import 'package:flutter/foundation.dart';

import 'poke_error_enum.dart';

@immutable
class PokeException implements Exception {
  const PokeException(this.error, {this.statusCode, this.statusMessage});

  final PokeError error;
  final int? statusCode;
  final String? statusMessage;

  static PokeException verifyError([
    PokeError error = PokeError.clear,
    int? statusCode,
    String? statusMessage,
  ]) {
    switch (statusCode!) {
      case HttpStatus.forbidden:
        return PokeException(
          PokeError.forbidden,
          statusCode: statusCode,
          statusMessage: statusMessage,
        );
      case HttpStatus.notFound:
        return PokeException(
          PokeError.notFound,
          statusCode: statusCode,
          statusMessage: statusMessage,
        );
      case HttpStatus.internalServerError:
        return PokeException(
          PokeError.internalServerError,
          statusCode: statusCode,
          statusMessage: statusMessage,
        );
      default:
        return PokeException(
          error,
          statusCode: statusCode,
          statusMessage: statusMessage,
        );
    }
  }

  @override
  String toString() {
    return 'Error(message: ${error.message}, statusCode: $statusCode, statusMessage: $statusMessage)';
  }
}
