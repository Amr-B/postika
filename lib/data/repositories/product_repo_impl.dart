import '../domain/entities/product.dart';
import '../domain/repositories/product_repo.dart';
import '../datasources/local/product_local_data_source.dart';
import '../models/product_model.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductLocalDataSource localDataSource;

  ProductRepoImpl({required this.localDataSource});

  @override
  Future<void> addProduct(Product product) async {
    final model = ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
    );
    await localDataSource.insertProduct(model);
  }

  @override
  Future<void> deleteProduct(int id) async {
    await localDataSource.deleteProduct(id);
  }

  @override
  Future<List<Product>> getAllProducts() async {
    return await localDataSource.getAllProducts();
  }

  @override
  Future<void> updateProduct(Product product) async {
    final model = ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      quantity: product.quantity,
    );
    await localDataSource.updateProduct(model);
  }
}
