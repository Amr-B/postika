import 'package:poskita/data/domain/entities/product.dart';

abstract class ProductRepo {
  Future<List<Product>> getAllProducts();
  Future<void> addProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(int id);
}
