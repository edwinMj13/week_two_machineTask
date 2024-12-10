import 'dart:convert';
PagignationModel pagignationModelFromJson(String str) => PagignationModel.fromJson(json.decode(str));
String pagignationModelToJson(PagignationModel data) => json.encode(data.toJson());
class PagignationModel {
  PagignationModel({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});

  PagignationModel.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    map['skip'] = skip;
    map['limit'] = limit;
    return map;
  }

}

Products productsFromJson(String str) => Products.fromJson(json.decode(str));
String productsToJson(Products data) => json.encode(data.toJson());
class Products {
  Products({
      this.id, 
      this.title, 
      this.price, 
      this.thumbnail,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    thumbnail = json['thumbnail'];
  }
  int? id;
  String? title;
  double? price;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['thumbnail'] = thumbnail;
    return map;
  }

}