import 'dart:convert';

class Custumer {
  final String email;
  final String name;
  final String address;
  final String phone;
  Custumer({
    required this.email,
    required this.name,
    required this.address,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'address': address,
      'phone': phone,
    };
  }

  factory Custumer.fromMap(Map<String, dynamic> map) {
    return Custumer(
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
    return 'Custumer(email: $email, name: $name, address: $address, phone: $phone)';
  }
}
