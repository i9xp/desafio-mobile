import 'package:desafioi9xp/src/core/interfaces/api.interface.dart';
import 'package:desafioi9xp/src/core/models/apiresponse.model.dart';
import 'package:desafioi9xp/src/core/utils/utils.dart';
import 'package:dio/dio.dart';

class DioService implements IApi {
  final Dio dio = Dio();

  Future<ApiResponseModel> post(String url, {Map<String, dynamic> formData}) async {
    FormData _formData = formData != null ? new FormData.fromMap(formData) : null;
    final response = await dio.post("${Utils.URL}/${url}", data: _formData);
    return new ApiResponseModel(response.data, response.statusCode);
  }

  Future<ApiResponseModel> get(String url, {Map<String, dynamic> queryParameters}) async {
    final response = await dio.get("${Utils.URL}/${url}", queryParameters: queryParameters);
    return new ApiResponseModel(response.data, response.statusCode);
  }
}
