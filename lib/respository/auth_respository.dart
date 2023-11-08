import 'package:sample_auth/data/network/BaseApiSerivces.dart';
import 'package:sample_auth/data/network/NetworkApiSerice.dart';
import 'package:sample_auth/res/app_url.dart';

class AuthRespository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          AppUrl.registerApiEndpoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
