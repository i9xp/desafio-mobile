import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/services/local_storage.dart';
import 'package:teste1/app/modules/shared/store/carrinho_store.dart';

part 'details_page_controller.g.dart';

class DetailsPageController = _DetailsPageControllerBase
    with _$DetailsPageController;

abstract class _DetailsPageControllerBase with Store {
  final CarrinhoStore _carrinhoStore;
  final IProductsRepository productsRepository;

  _DetailsPageControllerBase(this._carrinhoStore, this.productsRepository);

  void adicionarProdutoNoCarrinho(produtoModel) async {
    _carrinhoStore.adicionarProdutoNoCarrinho(produtoModel);
  }

  @action
  clearCart() async {
    LocalStorageService().removeAll();
  }
}
