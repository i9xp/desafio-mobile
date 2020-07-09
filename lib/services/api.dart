import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:i9xp_commerce/utils/api_response.dart';
import 'package:i9xp_commerce/utils/http_status_message.dart';
import '../env.dart';

class Api {
  
  final String _endpoint = Uri.encodeFull(environment['baseUrl']);
  
  Future<ApiResponse> get(String resource, {int timeout: 5000}) async {
    try {
      dio.Response response = await dio.Dio(
        new dio.BaseOptions(
          baseUrl: Uri.encodeFull(_endpoint),
          connectTimeout: timeout,
          receiveTimeout: timeout,
          sendTimeout: timeout,
          headers: await buildHeader(),
        ),
      ).get(Uri.encodeFull(resource));
      return buildOut(response);
    } catch (_error) {
      dio.DioError error = _error as dio.DioError;
      if (error.response == null) {
        return _errorNoResponse(error);
      } else {
        return buildOut(error.response);
      }
    }
  }

  ApiResponse buildOut(dio.Response response) {
    ApiResponse apiResponse = new ApiResponse();
    if (response.statusCode == 400) {
      Map<String, dynamic> review = {};
      response.data
          .forEach((element) => review[element['field']] = element['message']);
      apiResponse.setStatusMessage(new HttpStatusMessage(
        response.statusCode,
        message: "Review the fields to continue.",
      ));
      apiResponse.setReview(review);
    } else if (response.statusCode == 401) {
      apiResponse.setStatusMessage(new HttpStatusMessage(
        response.statusCode,
        message: "You have no permission to access this resource.",
      ));
    } else if (response.statusCode == 403) {
      apiResponse.setStatusMessage(new HttpStatusMessage(response.statusCode));
    } else if (response.statusCode == 201) {
      apiResponse.setStatusMessage(new HttpStatusMessage(
        response.statusCode,
        message: "Record created with success",
      ));
      apiResponse.setContent(response.data);
    } else if (response.statusCode == 200) {
      apiResponse.setStatusMessage(new HttpStatusMessage(
        response.statusCode,
        message: "Ok",
      ));
      apiResponse.setContent(response.data);
    } else if (response.data is Map<String, dynamic>) {
      Map<String, dynamic> responseBody = response.data;
      apiResponse.setStatusMessage(new HttpStatusMessage(
        response.statusCode,
        message: responseBody.containsKey('error')
            ? responseBody['error']['message']
            : response.data.toString(),
      ));
    } else {
      apiResponse.setStatusMessage(new HttpStatusMessage(
        response.statusCode,
        message: response.data.toString(),
      ));
    }
    return apiResponse;
  }

  Future<Map<String, String>> buildHeader() async {
    return {
      "Accept": "application/json",
    };
  }

  ApiResponse _errorNoResponse(dio.DioError error) {
    if (error.error is SocketException) {
      return new ApiResponse(
          statusMessage: HttpStatusMessage(
            502,
            message: "Was not possible to connect to server",
          ),
          offline: true);
    } else if (error is TimeoutException) {
      return new ApiResponse(
          statusMessage: HttpStatusMessage(
            504,
            message: "Request execution time reached the limit",
          ),
          offline: true);
    } else {
      return new ApiResponse(
        statusMessage: HttpStatusMessage(500, message: error.toString()),
      );
    }
  }

}
