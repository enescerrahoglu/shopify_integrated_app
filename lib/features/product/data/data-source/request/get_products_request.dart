import 'package:shopify_integrated_app/core/enum/api_method.dart';
import 'package:shopify_integrated_app/core/network/api_request.dart';

class GetProductsRequest implements APIRequest {
  @override
  get body => {
    "query": """
    query { products(first: 100) { edges { node { id title description images(first: 10) { edges { node { originalSrc altText } } } variants(first: 1) { edges { node { price { amount currencyCode } } } } } } } }""",
  };

  @override
  String get endPoint => '';

  @override
  APIMethod get method => APIMethod.post;

  @override
  Map<String, dynamic> get queryParameters => {};
}
