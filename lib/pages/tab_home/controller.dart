import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/models/campaign.model.dart';
import 'package:i9xp_commerce/models/category.model.dart';
import 'package:i9xp_commerce/models/product.model.dart';

class TabHomeController extends GetxController{

  RxList<CategoryModel> categories = RxList<CategoryModel>([]);
  RxList<CampaignModel> campaigns = RxList<CampaignModel>([]);
  RxList<ProductModel> products = RxList<ProductModel>([]);

  TabHomeController(){
    _init();
  }

  _init(){
    const String baseurl = "https://i9xp-commerce.s3.amazonaws.com";
    categories.addAll([
      new CategoryModel(id: 1, name: "Apparel", imageUrl: "$baseurl/categories/0001.png"),
      new CategoryModel(id: 2, name: "Beauty", imageUrl: "$baseurl/categories/0002.png"),
      new CategoryModel(id: 3, name: "Shoes", imageUrl: "$baseurl/categories/0003.png"),
      new CategoryModel(name: "See More"),
    ]);
    campaigns.addAll([
      new CampaignModel(id: 1, cta: "SEE MORE", title: "For all your summer clothing needs", titleColorHex: "#000000", imageUrl: "$baseurl/campaigns/0001.png"),
      new CampaignModel(id: 2, imageUrl: "$baseurl/campaigns/0002.png"),
    ]);
    products.addAll([
      new ProductModel(id: 1, name: "Anke boots", price: 49.99, imageUrl: "$baseurl/products/0001.png"),
      new ProductModel(id: 2, name: "Backpack", price: 20.58, imageUrl: "$baseurl/products/0002.png"),
      new ProductModel(id: 3, name: "Red Scaft", price: 11.00, imageUrl: "$baseurl/products/0003.png"),
    ]);
  }

}