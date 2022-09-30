// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    required this.statusCode,
    required this.success,
    required this.messages,
    required this.data,
  });

  int statusCode;
  bool success;
  List<dynamic> messages;
  Data data;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        statusCode: json["statusCode"],
        success: json["success"],
        messages: List<dynamic>.from(json["messages"].map((x) => x)),
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "messages": List<dynamic>.from(messages.map((x) => x)),
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.rowsReturned,
    required this.products,
  });

  int rowsReturned;
  List<Product> products;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        rowsReturned: json["rows_returned"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "rows_returned": rowsReturned,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.unit,
    required this.description,
    required this.status,
    required this.createdAt,
    required this.category,
    required this.supplier,
    required this.rating,
    required this.variant,
    required this.images,
  });

  String id;
  String name;
  String price;
  String image;
  String unit;
  String description;
  String status;
  DateTime createdAt;
  Category category;
  Category supplier;
  Rating rating;
  List<Variant> variant;
  List<String> images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
        unit: json["unit"],
        description: json["description"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        category: Category.fromJson(json["category"]),
        supplier: Category.fromJson(json["supplier"]),
        rating: Rating.fromJson(json["rating"]),
        variant:
            List<Variant>.from(json["variant"].map((x) => Variant.fromJson(x))),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "image": image,
        "unit": unit,
        "description": description,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "category": category.toJson(),
        "supplier": supplier.toJson(),
        "rating": rating.toJson(),
        "variant": List<dynamic>.from(variant.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Rating {
  Rating({
    required this.ratingOne,
    required this.ratingTwo,
    required this.ratingThree,
    required this.ratingFour,
    required this.ratingFive,
    required this.ratingValue,
    required this.total,
  });

  String ratingOne;
  String ratingTwo;
  String ratingThree;
  String ratingFour;
  String ratingFive;
  String ratingValue;
  String total;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        ratingOne: json["rating_one"],
        ratingTwo: json["rating_two"],
        ratingThree: json["rating_three"],
        ratingFour: json["rating_four"],
        ratingFive: json["rating_five"],
        ratingValue: json["rating_value"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "rating_one": ratingOne,
        "rating_two": ratingTwo,
        "rating_three": ratingThree,
        "rating_four": ratingFour,
        "rating_five": ratingFive,
        "rating_value": ratingValue,
        "total": total,
      };
}

class Variant {
  Variant({
    required this.id,
    required this.type,
    required this.values,
  });

  int id;
  String type;
  List<Value> values;

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"],
        type: json["type"],
        values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "values": List<dynamic>.from(values.map((x) => x.toJson())),
      };
}

class Value {
  Value({
    required this.id,
    required this.name,
    required this.price,
    required this.discount,
  });

  int id;
  Name? name;
  String price;
  String discount;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        id: json["id"],
        name: nameValues.map[json["name"]],
        price: json["price"],
        discount: json["discount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse![name],
        "price": price,
        "discount": discount,
      };
}

enum Name { RED, YOUNG, OLD }

final nameValues =
    EnumValues({"old": Name.OLD, "red": Name.RED, "young": Name.YOUNG});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
