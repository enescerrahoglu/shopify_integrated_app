import 'package:shopify_integrated_app/core/enum/api_method.dart';

abstract class APIRequest {
  String get endPoint;
  APIMethod get method;
  Map<String, dynamic> get queryParameters;
  dynamic get body;
}
