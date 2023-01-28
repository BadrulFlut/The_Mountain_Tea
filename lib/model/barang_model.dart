import 'dart:convert';

Barang? barangFromJson(String str) => Barang.fromJson(json.decode(str));

String barangToJson(Barang? data) => json.encode(data!.toJson());

class Barang {
  int? id;
  String name;
  String price;
  String description;
  String image;
  String? category;
  dynamic createdAt;
  dynamic updatedAt;

  Barang({
    this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    this.category,
    this.createdAt,
    this.updatedAt,
  });

  factory Barang.fromJson(Map<String, dynamic> json) => Barang(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
        category: json["category"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
