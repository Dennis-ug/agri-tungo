// To parse this JSON data, do
//
//     final categories = categoriesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Categories categoriesFromJson(String str) =>
    Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
    required this.statusCode,
    required this.success,
    required this.messages,
    required this.data,
  });

  int statusCode;
  bool success;
  List<dynamic> messages;
  Data data;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
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
    required this.categories,
  });

  int rowsReturned;
  List<Category> categories;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        rowsReturned: json["rows_returned"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "rows_returned": rowsReturned,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.timestamp,
    required this.image,
  });

  String id;
  String name;
  String icon;
  dynamic description;
  DateTime timestamp;
  String image;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
        description: json["description"],
        timestamp: DateTime.parse(json["timestamp"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon": icon,
        "description": description,
        "timestamp": timestamp.toIso8601String(),
        "image": image,
      };
}
