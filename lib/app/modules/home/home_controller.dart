import 'package:mobx/mobx.dart';

import 'package:teste1/app/modules/resources/products_repository_interface.dart';
import 'package:teste1/app/modules/shared/carrinho_model.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/services/local_storage.dart';
import 'package:teste1/app/modules/shared/store/carrinho_store.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IProductsRepository productsRepository;

  final CarrinhoStore _carrinhoStore;
  ObservableList<CarrinhoModel> carrinho = ObservableList();

  List<Map<String, dynamic>> shoppingCartStorage;

  @observable
  ObservableStream<List<ProductModel>> productsList;

  _HomeControllerBase(this.productsRepository, this._carrinhoStore) {
    getList();
  }

  @action
  getList() {
    productsList = productsRepository.getProducts().asObservable();
  }

  @action
  clearCart() async {
    LocalStorageService().removeAll();
  }

  @action
  getShoppingCartInStorage() async {
    shoppingCartStorage = await LocalStorageService().getAll();

    if (_carrinhoStore.allProducts.isEmpty) {
      if (shoppingCartStorage.isEmpty) {
        return null;
      } else {
        for (var item in shoppingCartStorage) {
          _carrinhoStore.initializeShoppingCart(ProductModel.fromJson(item));
        }
      }
    }
  }
}
