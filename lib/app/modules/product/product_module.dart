import 'package:desafio_mobile/app/app_controller.dart';
import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/modules/product/product_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mobile/app/modules/product/product_page.dart';

class ProductModule extends ModuleWidget {
  final ProductModel productModel;
  final PageController pageController;
  final appController;

  ProductModule({this.pageController, this.productModel, this.appController});
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ProductController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ProductPage(
        productModel: productModel,
        pageController: pageController,
        appController: appController,
      );

  static Inject get to => Inject<ProductModule>.of();
}
