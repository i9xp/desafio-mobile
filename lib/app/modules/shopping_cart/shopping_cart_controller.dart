import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/shared/carrinho_model.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/services/local_storage.dart';
import 'package:teste1/app/modules/shared/store/carrinho_store.dart';

part 'shopping_cart_controller.g.dart';

class ShoppingCartController = _ShoppingCartControllerBase
    with _$ShoppingCartController;

abstract class _ShoppingCartControllerBase with Store {
  final CarrinhoStore _carrinhoStore;
  ObservableList<CarrinhoModel> carrinho = ObservableList();

  List<Map<String, dynamic>> shoppingCartStorage;

  _ShoppingCartControllerBase(this._carrinhoStore) {
    getList();
  }

  @action
  getList() async {
    carrinho = _carrinhoStore.produtosNoCarrinho.asObservable();
  }

  @action
  getShoppingCartInStorage() async {
    shoppingCartStorage = await LocalStorageService().getAll();

    if (_carrinhoStore.allProducts.isEmpty) {
      if (shoppingCartStorage.isEmpty) {
        return null;
      } else {
        for (var item in shoppingCartStorage) {
          _carrinhoStore
              .adicionarProdutoNoCarrinho(ProductModel.fromJson(item));
        }
      }
    }
  }

  @action
  addProductToCart() {
    LocalStorageService().add(carrinho);
  }

  @action
  clearCart() async {
    LocalStorageService().removeAll();
  }

  void removerProdutoDoCarrinho(produtoModel) async {}

  void adicionarProdutoNoCarrinho(produtoModel) async {
    _carrinhoStore.adicionarProdutoNoCarrinho(produtoModel);

    LocalStorageService().add(_carrinhoStore.produtosNoCarrinho);
  }

  @action
  addShoppingCartToStorage(List<CarrinhoModel> carrinhoModel) async {
    await LocalStorageService().add(carrinhoModel);
  }

  @computed
  CarrinhoStore get carrinhoStore => _carrinhoStore;

  @computed
  List<CarrinhoModel> get carrinhoList => carrinho.toList();

  @computed
  int get total => _carrinhoStore.total;
}
