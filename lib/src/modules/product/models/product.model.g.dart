// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final typeId = 0;

  @override
  ProductModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      id: fields[0] as String,
      name: fields[1] as String,
      completeName: fields[2] as String,
      brand: fields[3] as String,
      sku: fields[4] as String,
      condition: fields[5] as String,
      material: fields[6] as String,
      category: fields[7] as String,
      fiting: fields[8] as String,
      images: (fields[9] as List)?.cast<String>(),
      description: fields[10] as String,
      price: fields[11] as String,
      score: fields[12] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.completeName)
      ..writeByte(3)
      ..write(obj.brand)
      ..writeByte(4)
      ..write(obj.sku)
      ..writeByte(5)
      ..write(obj.condition)
      ..writeByte(6)
      ..write(obj.material)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.fiting)
      ..writeByte(9)
      ..write(obj.images)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.price)
      ..writeByte(12)
      ..write(obj.score);
  }
}
