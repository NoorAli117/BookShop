import 'dart:convert';

class Publisher {
  final int? id;
  final String name;
  final String address;
  final String phone;
  final String url;
  Publisher({
    this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'phone': phone,
      'url': url,
    };
  }

  factory Publisher.fromMap(Map<String, dynamic> map) {
    return Publisher(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Publisher.fromJson(String source) =>
      Publisher.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Publisher(id: $id,name: $name, address: $address, phone: $phone, url: $url)';
  }
}
