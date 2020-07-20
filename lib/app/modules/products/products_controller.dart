import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';
import 'package:teste1/app/modules/shared/product_model.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  final IProductsRepository productsRepository;

  @observable
  ObservableStream<List<ProductModel>> productsList;
  ObservableStream<List<ProductModel>> productListByCategory;

  _ProductsControllerBase(this.productsRepository) {
    getList();
  }

  @action
  getList() {
    productsList = productsRepository.getProducts().asObservable();
  }

  @action
  setFavorite(int productId) {}
}
