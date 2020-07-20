import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';
import 'package:teste1/app/modules/shared/product_model.dart';

part 'favorites_controller.g.dart';

class FavoritesController = _FavoritesControllerBase with _$FavoritesController;

abstract class _FavoritesControllerBase with Store {
  final IProductsRepository productsRepository;

  @observable
  ObservableStream<List<ProductModel>> productsList;

  _FavoritesControllerBase(this.productsRepository) {
    getList();
  }

  @action
  getList() {
    productsList = productsRepository.getProducts().asObservable();
  }

  @action
  setFavorite(ProductModel productModel) {
    if (productModel.favorite == true) {
      productModel.ref.updateData({'favorite': true});
    } else {
      productModel.ref.updateData({'favorite': false});
    }
    getList();
  }
}
