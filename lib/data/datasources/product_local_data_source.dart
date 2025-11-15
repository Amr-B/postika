import 'package:sqflite/sqflite.dart';
import 'package:poskita/utils/helpers/database_helper.dart';
import '../models/product_model.dart';

class ProductLocalDataSource {
  final dbHelper = DatabaseHelper.instance;

  Future<List<ProductModel>> getAllProducts() async {
    final db = await dbHelper.database;
    final result = await db.query('products');
    return result.map((e) => ProductModel.fromMap(e)).toList();
  }

  Future<void> insertProduct(ProductModel product) async {
    final db = await dbHelper.database;
    await db.insert('products', product.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> updateProduct(ProductModel product) async {
    final db = await dbHelper.database;
    await db.update('products', product.toMap(),
        where: 'id = ?', whereArgs: [product.id]);
  }

  Future<void> deleteProduct(int id) async {
    final db = await dbHelper.database;
    await db.delete('products', where: 'id = ?', whereArgs: [id]);
  }
}
