import 'package:get/state_manager.dart';

class CampaignModel{

  RxInt id = RxInt(null);
  setId(int value) => this.id.value = value;

  RxString cta = RxString(null);
  setCta(String value) => this.cta.value = value;

  RxString title = RxString(null);
  setTitle(String value) => this.title.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => this.imageUrl.value = value;

}