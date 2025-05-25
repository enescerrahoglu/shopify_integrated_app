import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? message;
  final int? statusCode;

  const Failure({this.message, this.statusCode});

  @override
  List<Object?> get props => [message, statusCode];

  @override
  String toString() {
    return 'Failure(message: $message, statusCode: $statusCode)';
  }
}

Failure parseDioError(DioException e) {
  final rawData = e.response?.data;
  final statusCode = e.response?.statusCode ?? 500;

  try {
    if (rawData is String) {
      final decoded = jsonDecode(rawData);
      if (decoded is Map<String, dynamic>) {
        return Failure(
          message: decoded['message'] ?? 'unexpected_error',
          statusCode: decoded['status'] ?? statusCode,
        );
      }
    } else if (rawData is Map<String, dynamic>) {
      return Failure(
        message: rawData['message'] ?? 'unexpected_error',
        statusCode: rawData['status'] ?? statusCode,
      );
    }
  } catch (_) {
    return Failure(message: rawData.toString(), statusCode: statusCode);
  }

  return Failure(message: 'unexpected_error', statusCode: statusCode);
}
