import '../database/db_helper.dart';
import '../model/warehouse.dart';

class WarehouseDao {
  static final warehouseDao = WarehouseDao();

  final database = DbHelper().db;

  Future<List<Warehouse?>> getAllWarehouse() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM  warehouse ORDER BY id");

    List<Warehouse> response =
        res.isNotEmpty ? res.map((c) => Warehouse.fromMap(c)).toList() : [];

    return response;
  }

  Future<bool> insertWarehouse(Warehouse warehouse) async {
    final db = await database;
    final rowIndex = await db.rawInsert(
        "INSERT into warehouse(code,address,phone) VALUES('${warehouse.code}','${warehouse.address}','${warehouse.phone}')");
    if (rowIndex > 0) {
      return true;
    } else {
      return false;
    }
  }
}
