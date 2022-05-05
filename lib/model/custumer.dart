import 'dart:convert';

class Custumer {
  final int id;
  final String email;
  final String name;
  final String address;
  final String phone;
  Custumer({
    required this.id,
    required this.email,
    required this.name,
    required this.address,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'address': address,
      'phone': phone,
    };
  }

  factory Custumer.fromMap(Map<String, dynamic> map) {
    return Custumer(
      id: map['id'] ?? 0,
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Custumer.fromJson(String source) =>
      Custumer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Custumer(id:$id,email: $email, name: $name, address: $address, phone: $phone)';
  }
}
