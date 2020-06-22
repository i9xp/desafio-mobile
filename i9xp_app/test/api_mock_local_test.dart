import 'package:flutter_test/flutter_test.dart';
import 'package:i9xp_app/app/shared/controllers/service_controller.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';

void main() {

  group('Service Controller Test', (){

    final ResponseStatus<List<ProductModel>> response = ResponseStatus<List<ProductModel>>(200, data: [
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

    test('Teste de retorno com sucesso da API - StatudCode = 200', () async {
      ServiceController service = ServiceController(
        products: ProductsRepositoryMockLocal()
      );
      
      ResponseStatus<List<ProductModel>> result = await service.products.get();

      expect(result.statusCode, 200);
    });

    test('Teste de retorno com sucesso da API - Total de itens = 3', () async {
      ServiceController service = ServiceController(
        products: ProductsRepositoryMockLocal()
      );
      
      ResponseStatus<List<ProductModel>> result = await service.products.get();

      expect(result.data.length, 3);
    });
  });
}
