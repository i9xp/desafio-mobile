import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/core/model/index.dart';

class CampaignModel extends Model<CampaignModel> {
  CampaignModel({
    int id,
    String cta,
    String title,
    String titleColorHex,
    String imageUrl,
  }) {
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

  @override
  CampaignModel parser(Map<String, dynamic> body) {
    return CampaignModel(
      id: int.parse(body['id'].toString()),
      cta: body['cta'],
      title: body['title'],
      titleColorHex: body['title_color_hex'],
      imageUrl: body['image_url'],
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': this.id.value,
      'cta': this.cta.value,
      'title': this.title.value,
      'title_color_hex': this.titleColorHex.value,
      'image_url': this.imageUrl.value,
    };
  }
}
