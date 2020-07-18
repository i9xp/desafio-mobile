import 'package:desafioi9xp/src/core/models/apiresponse.model.dart';

abstract class IApi {
  Future<ApiResponseModel> post(String url, {Map<String, dynamic> formData});

  Future<ApiResponseModel> get(String url, {Map<String, dynamic> queryParameters});
}
