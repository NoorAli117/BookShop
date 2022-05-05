import '../database/db_helper.dart';
import '../model/basket.dart';

class BasketDao {
  // Insert employee on database
  static final basketDao = BasketDao();

  final database = DbHelper().db;

  Future<List<Basket?>> getAllBasket() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM  shoppingbasket ORDER BY id");

    List<Basket> response =
        res.isNotEmpty ? res.map((c) => Basket.fromMap(c)).toList() : [];

    return response;
  }
}
