class Product {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.quantity,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    int? quantity,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image,
      description: description ?? this.description,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
