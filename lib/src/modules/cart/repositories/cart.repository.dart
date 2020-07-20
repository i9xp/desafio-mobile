import 'package:desafioi9xp/src/core/enums/loading.enum.dart';
import 'package:desafioi9xp/src/core/interfaces/repository.interface.dart';
import 'package:desafioi9xp/src/core/services/hive.service.dart';
import 'package:desafioi9xp/src/modules/cart/models/cart_item.model.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';

class CartRepository implements IRepository {
  HiveService _hive;

  CartRepository(this._hive);
  /* {
    _hive = new HiveService("cart");
  }*/

  ELoadingStatus _loadingStatus = ELoadingStatus.loading;

  List<CartItemModel> getCartProducts() {
    _loadingStatus = ELoadingStatus.loading;
    var result = _hive.getCart();
    if (result != null) {
      _loadingStatus = ELoadingStatus.completed;
      return result;
    } else {
      _loadingStatus = ELoadingStatus.error;
      throw Exception('Falha ao carregar dados');
    }
  }

  insertProduct(ProductModel product, {int amount = 1}) async {
    _loadingStatus = ELoadingStatus.loading;
    _hive.insertItem(product, amount: amount);
    _loadingStatus = ELoadingStatus.completed;
  }

  removeProduct(int product) async {
    _loadingStatus = ELoadingStatus.loading;
    _hive.removeItem(product);
    _loadingStatus = ELoadingStatus.completed;
  }

  removeAllProduct() async {
    _hive.removeAll();
  }

  getStatus() {
    return _loadingStatus;
  }
}
