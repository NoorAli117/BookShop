import 'dart:convert';

class Publisher {
  final String name;
  final String address;
  final String phone;
  final String url;
  Publisher({
    required this.name,
    required this.address,
    required this.phone,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'phone': phone,
      'url': url,
    };
  }

  factory Publisher.fromMap(Map<String, dynamic> map) {
    return Publisher(
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
    return 'Publisher(name: $name, address: $address, phone: $phone, url: $url)';
  }
}
