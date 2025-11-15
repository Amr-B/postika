import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poskita/data/domain/entities/product.dart';
import 'package:poskita/data/repositories/product_repo_impl.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductRepoImpl repository;

  ProductsCubit({required this.repository}) : super(ProductsInitial());
  Future<void> fetchProducts() async {
    emit(ProductsLoading());
    try {
      final products = await repository.getAllProducts();
      emit(ProductsLoaded(products: products)); // ← MISSING
    } catch (e) {
      emit(ProductsError(message: e.toString()));
    }
  }

  Future<void> increametnQnt(Product product) async {
    final updated = product.copyWith(quantity: product.quantity + 1);
    await repository.updateProduct(updated);
    fetchProducts();
  }

  Future<void> decrementQuantity(Product product) async {
    if (product.quantity <= 0) return;
    final updated = product.copyWith(quantity: product.quantity - 1);
    await repository.updateProduct(updated);
    fetchProducts();
  }
}
