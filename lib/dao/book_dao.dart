import 'package:bookshop/model/book.dart';

import '../database/db_helper.dart';

class BookDao {
  // Insert employee on database
  static final bookDao = BookDao();

  final database = DbHelper().db;

  Future<List<Book?>> getAllBooks() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM  book ORDER BY id");

    List<Book> response =
        res.isNotEmpty ? res.map((c) => Book.fromMap(c)).toList() : [];

    return response;
  }

  Future<bool> insertBook(Book book) async {
    final db = await database;
    final rowIndex = await db.rawInsert(
        "INSERT into book(title,year,price,auther_id,warehouse_id,publisher_id,created_date,updated_date) VALUES('${book.title}',${book.year},${book.price},${book.autherId},${book.warehouseId},${book.publisherId},${book.createdDate},${book.updatedDate})");
    if (rowIndex > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<Map<String, dynamic>>> getAllBookData() async {
    final db = await database;
    List<Map<String, dynamic>> res = await db.rawQuery(
        "SELECT * from book  JOIN warehouse ON  book.warehouse_id = warehouse_id  join publisher on book.publisher_id = publisher_id  JOIN auther on book.auther_id = auther_id");

    return res;
  }
}
