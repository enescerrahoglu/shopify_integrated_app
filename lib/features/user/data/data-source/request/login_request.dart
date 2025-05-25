import 'package:shopify_integrated_app/core/enum/api_method.dart';
import 'package:shopify_integrated_app/core/network/api_request.dart';
import 'package:shopify_integrated_app/features/user/domain/model/request/login/login_request_model.dart';

class LoginRequest implements APIRequest {
  final LoginRequestModel loginRequestModel;
  LoginRequest({required this.loginRequestModel});

  @override
  get body => {
    "query":
        """
          mutation customerAccessTokenCreate {
            customerAccessTokenCreate(input: {email: "${loginRequestModel.email}", password: "${loginRequestModel.password}"}) {
              customerAccessToken {
                accessToken
              }
              customerUserErrors {
                message
              }
            }
          }
        """,
  };

  @override
  String get endPoint => '';

  @override
  APIMethod get method => APIMethod.post;

  @override
  Map<String, dynamic> get queryParameters => {};
}
