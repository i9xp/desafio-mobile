import 'package:get/state_manager.dart';

class CampaignModel{


  CampaignModel({int id, String cta, String title, String titleColorHex, String imageUrl}){
    this.setId(id);
    this.setCta(cta);
    this.setTitle(title);
    this.setTitleColorHex(titleColorHex);
    this.setImageUrl(imageUrl);
  }

  RxInt id = RxInt(null);
  setId(int value) => this.id.value = value;

  RxString cta = RxString(null);
  setCta(String value) => this.cta.value = value;

  RxString title = RxString(null);
  setTitle(String value) => this.title.value = value;

  RxString titleColorHex = RxString(null);
  setTitleColorHex(String value) => this.titleColorHex.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => this.imageUrl.value = value;

}