// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    name: json['name'] as String,
    nick: json['nick'] as String,
    price: (json['price'] as num)?.toDouble(),
    brand: json['brand'] as String,
    sku: json['sku'] as String,
    condition: json['condition'] as String,
    material: json['material'] as String,
    category: json['category'] as String,
    fitting: json['fitting'] as String,
    stars: (json['stars'] as num)?.toDouble(),
    icon: json['icon'] as String,
    images: (json['images'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nick': instance.nick,
      'price': instance.price,
      'brand': instance.brand,
      'sku': instance.sku,
      'condition': instance.condition,
      'material': instance.material,
      'category': instance.category,
      'fitting': instance.fitting,
      'icon': instance.icon,
      'stars': instance.stars,
      'images': instance.images,
    };
