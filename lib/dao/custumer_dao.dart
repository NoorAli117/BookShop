import '../database/db_helper.dart';
import '../model/custumer.dart';

class CustumerDao {
  static final custumerDao = CustumerDao();

  final database = DbHelper().db;

  Future<List<Custumer?>> getAllCustumer() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM  custumer ORDER BY id");

    List<Custumer> response =
        res.isNotEmpty ? res.map((c) => Custumer.fromMap(c)).toList() : [];

    return response;
  }
}
