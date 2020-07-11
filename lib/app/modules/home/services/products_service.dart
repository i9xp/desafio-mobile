import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/shared/constants/config.dart';

class ProductsService extends Disposable {
  final _dio = Dio(
    BaseOptions(baseUrl: AppConfig.API_BASE_URL),
  );

  Future<List<ProductModel>> getProducts() async {
    return _dio.get("products").then((value) {
      return (value.data as List).map((d) => ProductModel.fromJson(d)).toList();
    });
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
