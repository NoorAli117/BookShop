import '../database/db_helper.dart';
import '../model/custumer.dart';
import '../model/publisher.dart';

class PublisherDao {
  static final publisherDao = PublisherDao();

  final database = DbHelper().db;

  Future<List<Publisher?>> getAllPublisher() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM  publisher ORDER BY id");

    List<Publisher> response =
        res.isNotEmpty ? res.map((c) => Publisher.fromMap(c)).toList() : [];

    return response;
  }

  Future<bool> insertPublisher(Publisher publisher) async {
    final db = await database;
    final rowIndex = await db.rawInsert(
        "INSERT into publisher(name,address,phone,url) VALUES('${publisher.name}','${publisher.address}','${publisher.phone}','${publisher.url}')");
    if (rowIndex > 0) {
      return true;
    } else {
      return false;
    }
  }
}
