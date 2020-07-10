import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/models/campaign.model.dart';
import 'package:i9xp_commerce/models/category.model.dart';
import 'package:i9xp_commerce/models/product.model.dart';
import 'package:i9xp_commerce/services/api.dart';
import 'package:i9xp_commerce/utils/api_response.dart';

class TabHomeController extends GetxController {
  RxBool loading = RxBool(false);
  setLoading(bool value) => loading.value = value;
  RxList<CategoryModel> categories = RxList<CategoryModel>([]);
  RxList<CampaignModel> campaigns = RxList<CampaignModel>([]);
  RxList<ProductModel> products = RxList<ProductModel>([]);

  TabHomeController() {
    _fetch();
  }

  _fetch() async {
    setLoading(true);
    try {
      List<ApiResponse> responses = await Future.wait([
        Api.get("/categories"),
        Api.get("/campaigns"),
      ]);
      if (responses[0].getStatusMessage().code == 200) {
        categories.clear();
        categories.addAll(List<CategoryModel>.from(
            responses[0].getContent().map((m) => CategoryModel().parser(m))));
        categories.add(CategoryModel(name: "See All"));
        //Union all products of all categories
        products.clear();
        responses[0].getContent().forEach((category) {
          if (category['products'] != null) {
            products.addAll(List<ProductModel>.from(
                category['products'].map((m) => ProductModel().parser(m))));
          }
        });
      }
      if (responses[1].getStatusMessage().code == 200) {
        campaigns.clear();
        campaigns.addAll(List<CampaignModel>.from(
            responses[1].getContent().map((m) => CampaignModel().parser(m))));
      }
    } catch (error) {

    } finally {
      setLoading(false);
    }
  }
}
