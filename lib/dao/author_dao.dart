import '../database/db_helper.dart';
import '../model/auther.dart';

class AuthorDao {
  static final autherDao = AuthorDao();

  final database = DbHelper().db;

  Future<List<Auther?>> getAllAuther() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM  auther  ORDER BY id");

    List<Auther> response =
        res.isNotEmpty ? res.map((c) => Auther.fromMap(c)).toList() : [];

    return response;
  }

  Future<bool> insertAuther(Auther auther) async {
    final db = await database;
    final rowIndex = await db.rawInsert(
        "INSERT into auther(name,address,url) VALUES('${auther.name}','${auther.address}','${auther.url}')");
    if (rowIndex > 0) {
      return true;
    } else {
      return false;
    }
  }
}
