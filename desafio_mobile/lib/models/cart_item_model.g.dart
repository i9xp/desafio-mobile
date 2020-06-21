// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return CartItemModel(
    img: json['img'] as String,
    title: json['title'] as String,
    subTitle: json['subTitle'] as String,
    price: (json['price'] as num)?.toDouble(),
    qtd: json['qtd'] as int,
  );
}

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'img': instance.img,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'price': instance.price,
      'qtd': instance.qtd,
    };
