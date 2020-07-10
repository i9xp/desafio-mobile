import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/core/model/index.dart';

class CampaignModel extends Model<CampaignModel> {

  @override
  String table() => "campaigns";
  
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
    if(body == null) return null;
    return CampaignModel(
      id: body.containsKey("id") ? int.parse(body['id'].toString()) : null,
      cta: body.containsKey("cta") ? body['cta' ] : null,
      title: body.containsKey("title") ? body['title'] : null,
      titleColorHex: body.containsKey("title_color_hex") ? body['title_color_hex'] : null,
      imageUrl: body.containsKey("image_url") ? body['image_url'] : null,
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': this.id.value ?? null,
      'cta': this.cta.value ?? null,
      'title': this.title.value ?? null,
      'title_color_hex': this.titleColorHex.value ?? null,
      'image_url': this.imageUrl.value ?? null,
    };
  }

}
