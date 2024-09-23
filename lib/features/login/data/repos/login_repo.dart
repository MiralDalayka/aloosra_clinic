//this class to log in since we have only one way to log in so no need for abstraction
import 'package:aloosra_clinic/core/networking/api_error_handler.dart';
import 'package:aloosra_clinic/core/networking/api_result.dart';
import 'package:aloosra_clinic/core/networking/api_service.dart';
import 'package:aloosra_clinic/features/login/data/models/login_request_body.dart';

import '../models/login_response.dart';

class LoginRepo {
  //using the service
  final ApiService _apiService;

  LoginRepo(this._apiService);

  //log in function use the api service and returns api result object
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      LoginResponse response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      //note use the error handler 
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
