import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/shared/carrinho_model.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/services/local_storage.dart';
part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStoreBase with _$CarrinhoStore;

abstract class _CarrinhoStoreBase with Store {
  var produtosNoCarrinho = ObservableList<CarrinhoModel>();

  List<Map<String, dynamic>> toJson() {
    List<Map<String, dynamic>> data;

    for (CarrinhoModel carrinhoModel in produtosNoCarrinho) {
      data.add(carrinhoModel.toJson());
    }
    return data;
  }

  void initializeShoppingCart(ProductModel produtoModel) {
    var index = produtosNoCarrinho.indexWhere(
        (carrinhoModel) => carrinhoModel.product.id == produtoModel.id);

    if (index >= 0) {
      produtosNoCarrinho.elementAt(index).adicionar();
    } else {
      produtosNoCarrinho.add(CarrinhoModel(produtoModel));
    }
  }

  void adicionarProdutoNoCarrinho(ProductModel produtoModel) {
    var index = produtosNoCarrinho.indexWhere(
        (carrinhoModel) => carrinhoModel.product.id == produtoModel.id);

    if (index >= 0) {
      produtosNoCarrinho.elementAt(index).adicionar();
    } else {
      produtosNoCarrinho.add(CarrinhoModel(produtoModel));
    }
    LocalStorageService().add(produtosNoCarrinho);
  }

  void adicionarCarrinhoAoStorage() {
    LocalStorageService().add(produtosNoCarrinho);
  }

  @computed
  List<CarrinhoModel> get allProducts => produtosNoCarrinho.toList();

  @computed
  int get total => produtosNoCarrinho
      .map((element) => element.product.preco * element.quantidade)
      .reduce((value, element) => value + element);
}
