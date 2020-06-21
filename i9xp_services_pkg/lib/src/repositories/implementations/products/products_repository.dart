import 'package:i9xp_services_pkg/src/models/http/response_status.dart';
import 'package:i9xp_services_pkg/src/models/product/product_model.dart';
import 'package:i9xp_services_pkg/src/repositories/interfaces/products/products_interface.dart';

class ProductsRepositoryMockLocal implements IProductsRepository {
  @override
  Future<ResponseStatus<List<ProductModel>>> get() async {
    await Future.delayed(Duration(seconds: 2));
    return ResponseStatus<List<ProductModel>>(200, data: [
      ProductModel.fromJson({
        'sku': '0590458902804',
        'color': '7. Hot Pink',
        'brand': 'Lily’s Ankle Boots',
        'condition': 'Brand New, With Box',
        'material': 'Faux Sued, Velvet',
        'category': 'Women Shoes',
        'fitting': 'True To Size',
        'name': 'Faux Sued Ankle Boots',
        'short': 'Ankle Boots',
        'price': 49.99,
        'rate': '4.9',
        'image':
            'http://dartside.org/desafio-mobile/boots.png'
      }),
      ProductModel.fromJson({
        'sku': '0590458902809',
        'color': 'Medium, Green',
        'brand': 'Lily’s Ankle Boots',
        'condition': 'Brand New, With Box',
        'material': 'Faux Sued, Velvet',
        'category': 'Women Shoes',
        'fitting': 'True To Size',
        'name': 'Faux Sued Ankle Boots',
        'short': 'Backpack',
        'price': 20.58,
        'rate': '4.6',
        'image':
            'http://dartside.org/desafio-mobile/backpack.png'
      }),
      ProductModel.fromJson({
        'sku': '0590458902802',
        'color': '2ft, Dark Red',
        'brand': 'Lily’s Ankle Boots',
        'condition': 'Brand New, With Box',
        'material': 'Faux Sued, Velvet',
        'category': 'Women Shoes',
        'fitting': 'True To Size',
        'name': 'Faux Sued Ankle Boots',
        'short': 'Red Scarf',
        'price': 11.00,
        'rate': '3.5',
        'image':
            'http://dartside.org/desafio-mobile/scarf.png'
      })
    ]);
  }
}
