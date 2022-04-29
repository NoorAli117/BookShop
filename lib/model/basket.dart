import 'dart:convert';

class Basket {
  final int basketId;
  Basket({
    required this.basketId,
  });

  Map<String, dynamic> toMap() {
    return {
      'basket_id': basketId,
    };
  }

  factory Basket.fromMap(Map<String, dynamic> map) {
    return Basket(
      basketId: map['basket_id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Basket.fromJson(String source) => Basket.fromMap(json.decode(source));

  @override
  String toString() => 'Basket(basket_id: $basketId)';
}
