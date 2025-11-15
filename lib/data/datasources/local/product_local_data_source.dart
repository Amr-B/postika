import 'package:sqflite/sqflite.dart';

import '../../models/product_model.dart';
import 'product_db.dart';

class ProductLocalDataSource {
  Future<int> insertProduct(ProductModel product) async {
    final db = await ProductDB.instance.database;
    return await db.insert('products', product.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int> updateProduct(ProductModel product) async {
    final db = await ProductDB.instance.database;
    return await db.update(
      'products',
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  Future<int> deleteProduct(int id) async {
    final db = await ProductDB.instance.database;
    return await db.delete(
      'products',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<ProductModel>> getAllProducts() async {
    final db = await ProductDB.instance.database;
    final rows = await db.query('products');

    return rows.map((e) => ProductModel.fromMap(e)).toList();
  }
}
