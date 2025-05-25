import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shopify_integrated_app/core/enum/api_method.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_integrated_app/core/error/failures.dart';

import 'api_request.dart';

class AuthToken {
  static String? token;
}

@singleton
class APIClient {
  late Dio dio;

  APIClient() {
    String baseUrl = dotenv.env['BASE_URL'] ?? "";

    dio = Dio(BaseOptions(baseUrl: baseUrl));
  }
  Future<Options> _prepareOptions() async {
    Map<String, dynamic> headers = {};
    String apiKey = dotenv.env['API_KEY'] ?? "";

    final authHeader = {'X-Shopify-Storefront-Access-Token': apiKey};
    headers.addAll(authHeader);
    headers.addAll(authHeader);
    if (AuthToken.token != null) {
      final bearer = 'Bearer ${AuthToken.token}';
      final authHeader = {'Authorization': bearer};
      headers.addAll(authHeader);
    }
    return Options(headers: headers);
  }

  Future<Response> request(APIRequest request) async {
    try {
      final options = await _prepareOptions();
      Response response;

      switch (request.method) {
        case APIMethod.head:
          response = await dio.head(
            request.endPoint,
            data: request.body,
            queryParameters: request.queryParameters,
            options: options,
          );
          break;
        case APIMethod.get:
          response = await dio.get(request.endPoint, queryParameters: request.queryParameters, options: options);
          break;
        case APIMethod.post:
          response = await dio.post(
            request.endPoint,
            data: request.body,
            queryParameters: request.queryParameters,
            options: options,
          );
          break;
        case APIMethod.put:
          response = await dio.put(
            request.endPoint,
            data: request.body,
            queryParameters: request.queryParameters,
            options: options,
          );
          break;
        case APIMethod.delete:
          response = await dio.delete(
            request.endPoint,
            data: request.body,
            queryParameters: request.queryParameters,
            options: options,
          );
          break;
        case APIMethod.patch:
          response = await dio.patch(
            request.endPoint,
            data: request.body,
            queryParameters: request.queryParameters,
            options: options,
          );
          break;
      }

      return response;
    } on DioException catch (e) {
      throw parseDioError(e);
    } catch (e) {
      throw Failure(message: e.toString(), statusCode: 500);
    }
  }

  Exception onError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.badResponse:
      case DioExceptionType.unknown:
        return _getExceptionFromStatusCode(exception);
      case DioExceptionType.cancel:
        break;

      default:
        return _getExceptionFromStatusCode(exception);
    }
    return exception;
  }

  Exception _getExceptionFromStatusCode(DioException exception) {
    switch (exception.response?.statusCode) {
      case 401:
        return Exception('Unauthorized');
      case 403:
        return Exception('Forbidden');
      case 404:
        return Exception('Not Found');
      case 500:
        return Exception('Internal Server Error');
      default:
        return Exception('Something went wrong');
    }
  }
}
