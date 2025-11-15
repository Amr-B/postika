import 'package:poskita/data/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required int id,
    required String name,
    required String description,
    required double price,
    int quantity = 0,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          quantity: quantity,
        );

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
    };
  }
}
