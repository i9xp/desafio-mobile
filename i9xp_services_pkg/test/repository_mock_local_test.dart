import 'package:flutter_test/flutter_test.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';

void main() {

  group('Repository test', (){
    test('Teste de retorno com sucesso da API - StatudCode = 200', () async {
      ProductsRepositoryMockLocal repository = ProductsRepositoryMockLocal();
      ResponseStatus<List<ProductModel>> result = await repository.get();
      expect(result.statusCode, 200);
    });
  });
}
