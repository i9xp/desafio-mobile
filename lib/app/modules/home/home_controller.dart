import 'package:i9xp/app/modules/home/models/category_image.dart';
import 'package:i9xp/app/modules/home/models/category_item_model.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/modules/home/services/products_service.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  var bottomBarCurrentIndex = 0;

  @observable
  ObservableList<ProductModel> products;

  final ProductsService productsService;

  _HomeControllerBase(this.productsService) {
    productsService.getProducts().then(setProducts);
  }

  @action
  void setBottomBarIndex(int i) => bottomBarCurrentIndex = i;

  @action
  setProducts(List<ProductModel> p) => products = p.asObservable();

  final categories = [
    CategoryItemModel("Apparel", CategoryImage.APPAREL),
    CategoryItemModel("Beauty", CategoryImage.BEAUTY),
    CategoryItemModel("Shoes", CategoryImage.SHOES),
    CategoryItemModel("See all", CategoryImage.SEE_ALL),
  ];
}
