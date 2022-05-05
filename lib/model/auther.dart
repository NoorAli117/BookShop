import 'dart:convert';

class Auther {
  final int? id;
  final String name;
  final String address;
  final String url;
  Auther({
    this.id,
    required this.name,
    required this.address,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'url': url,
    };
  }

  factory Auther.fromMap(Map<String, dynamic> map) {
    return Auther(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Auther.fromJson(String source) => Auther.fromMap(json.decode(source));

  @override
  String toString() =>
      'Auther(id: $id,name: $name, address: $address, url: $url)';
}
