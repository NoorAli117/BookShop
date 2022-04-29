import 'dart:convert';

class Book {
  final int id;
  final String title;
  final int year;
  final int price;
  final int autherId;
  final int warehouseId;
  final int publisherId;
  final int createdDate;
  final int updatedDate;
  Book({
    required this.id,
    required this.title,
    required this.year,
    required this.price,
    required this.autherId,
    required this.warehouseId,
    required this.publisherId,
    required this.createdDate,
    required this.updatedDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'year': year,
      'price': price,
      'auther_id': autherId,
      'warehouse_id': warehouseId,
      'publisher_id': publisherId,
      'created_date': createdDate,
      'updated_date': updatedDate,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      year: map['year']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
      autherId: map['auther_id']?.toInt() ?? 0,
      warehouseId: map['warehouse_id']?.toInt() ?? 0,
      publisherId: map['publisher_id']?.toInt() ?? 0,
      createdDate: map['created_date']?.toInt() ?? 0,
      updatedDate: map['updated_date']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Book(id: $id, title: $title, year: $year, price: $price, auther_id: $autherId, warehouse_id: $warehouseId, publisher_id: $publisherId, created_date: $createdDate, updated_date: $updatedDate)';
  }
}
