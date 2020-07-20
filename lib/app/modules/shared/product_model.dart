import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String id;
  final String nome;
  final int preco;
  final String description;
  final String url;
  final String category;
  final DocumentReference ref;
  bool favorite;

  ProductModel({
    this.id,
    this.nome,
    this.preco,
    this.url,
    this.category,
    this.description,
    this.ref,
    this.favorite,
  });

  factory ProductModel.fromDocument(DocumentSnapshot documentSnapshot) {
    return ProductModel(
      id: documentSnapshot.documentID,
      nome: documentSnapshot.data['nome'],
      preco: documentSnapshot.data['preco'],
      url: documentSnapshot.data['url'],
      description: documentSnapshot.data['description'],
      category: documentSnapshot.data['category'],
      ref: documentSnapshot.reference,
      favorite: documentSnapshot.data['favorite'] ?? false,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['product']['id'],
      nome: json['product']['nome'],
      preco: json['product']['preco'],
      url: json['product']['url'],
      description: json['product']['description'],
      category: json['product']['category'],
      ref: json['product']['ref'],
      favorite: json['product']['favorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = id;
    data['nome'] = nome;
    data['preco'] = preco;
    data['url'] = url;
    data['description'] = description;
    data['category'] = category;
    data['favorite'] = favorite;

    return data;
  }
}
