import 'package:mobx/mobx.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
part 'carrinho_model.g.dart';

class CarrinhoModel = _CarrinhoModelBase with _$CarrinhoModel;

abstract class _CarrinhoModelBase with Store {
  final ProductModel product;

  @observable
  int _quantidade = 1;

  @computed
  int get quantidade => _quantidade;

  _CarrinhoModelBase(this.product);

  @action
  void adicionar() {
    _quantidade++;
  }

  @action
  CarrinhoModel fromJson(List<Map<String, dynamic>> json) {
    for (var item in json) {
      print(item);
    }
  }

  @action
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['product'] = product.toJson();
    data['quantidade'] = quantidade;
    return data;
  }

  @action
  void remover() {
    _quantidade--;
  }
}
