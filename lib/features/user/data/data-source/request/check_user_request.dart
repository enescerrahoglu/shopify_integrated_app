import 'package:shopify_integrated_app/core/enum/api_method.dart';
import 'package:shopify_integrated_app/core/network/api_request.dart';

class CheckUserRequest implements APIRequest {
  final String accessToken;
  CheckUserRequest({required this.accessToken});

  @override
  get body => {
    "query":
        """
    query {
      customer(customerAccessToken: "$accessToken") {
        id
        firstName
        lastName
        email
        phone
        createdAt
        defaultAddress {
          address1
          address2
          city
          province
          zip
          country
        }
      }
    }""",
  };

  @override
  String get endPoint => '';

  @override
  APIMethod get method => APIMethod.post;

  @override
  Map<String, dynamic> get queryParameters => {};
}
