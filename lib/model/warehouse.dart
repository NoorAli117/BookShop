import 'dart:convert';

class Warehouse {
  final int? id;
  final String code;
  final String address;
  final String phone;
  Warehouse({
    this.id,
    required this.code,
    required this.address,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'address': address,
      'phone': phone,
    };
  }

  factory Warehouse.fromMap(Map<String, dynamic> map) {
    return Warehouse(
      id: map['id'] ?? 0,
      code: map['code'] ?? '',
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Warehouse.fromJson(String source) =>
      Warehouse.fromMap(json.decode(source));

  @override
  String toString() =>
      'Warehouse(id:$id,code: $code, address: $address, phone: $phone)';
}
