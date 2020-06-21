import 'package:dio/dio.dart';

class ApiService {
  var dio = Dio(BaseOptions(baseUrl: "http://demo4473287.mockable.io/"));

  Future<List> getAllProducts() async{
    List model = List();
    var response = await dio.get("products");

    if(response.statusCode == 200){
      for(int i = 0; i < response.data.length; i++){
        model.add(response.data[i]);
      }
    }else{
      throw Exception();
    }

    return model;
  }
}
